import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/utils.dart';
import 'package:tab_container/tab_container.dart';

class MemoryDeskCreationScreen extends StatefulWidget {
  final MemoryDesk? initialMemoryDesk;
  final bool isEditing;
  final String? deskId;

  const MemoryDeskCreationScreen({
    super.key,
    this.initialMemoryDesk,
    required this.isEditing,
    this.deskId,
  });

  @override
  State<MemoryDeskCreationScreen> createState() =>
      _MemoryDeskCreationScreenState();
}

class _MemoryDeskCreationScreenState extends State<MemoryDeskCreationScreen>
    with SingleTickerProviderStateMixin {
  late GlobalKey<FormState> _formKey;
  late TabController _tabController;

  /// We’ll store the “current working copy.” If initialMemoryDesk ≠ null,
  /// start from that; otherwise use an empty-field MemoryDesk.
  late MemoryDesk _memoryPageData;
  late EditableMedia _mediaData;
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();

    _formKey = GlobalKey<FormState>();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      _selectedIndex.value = _tabController.index;
    });

    // If “edit mode,” clone the passed MemoryDesk; otherwise create a new one.
    if (widget.initialMemoryDesk != null) {
      _memoryPageData = widget.initialMemoryDesk!;
    } else {
      _memoryPageData = MemoryDesk(
        lastName: '',
        firstName: '',
        middleName: '',
        dateOfBirth: '',
        dateOfDeath: '',
        epitaphy: '',
        biography: '',
        photoUrl: '',
        photoUrls: [],
        videoUrls: [],
        isPrivate: false,
        password: '',
        ownerId: '',
      );
    }

    // If you also want to prefill media, you could pass a LocalMemoryPageMedia
    // out of the route’s extra as well. For simplicity, we keep it fresh:
    if (widget.initialMemoryDesk != null) {
      _mediaData = EditableMedia(
        existingPhotoUrls: widget.initialMemoryDesk!.photoUrls,
        existingVideoUrls: widget.initialMemoryDesk!.videoUrls,
      );
    } else {
      _mediaData = EditableMedia();
    }
  }

  void _updateProfileData(MemoryDesk updatedData) {
    setState(() {
      _memoryPageData = updatedData;
    });
  }

  void _updateMediaData(EditableMedia updatedData) {
    setState(() {
      _mediaData = updatedData;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _selectedIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    final double screenHeight = MediaQuery.of(context).size.height;
    final Color backgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.isEditing ? l10n.mdScreenEditing : l10n.mdScreenCreation,
          style: const TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            GoRouter.of(context).pop();
            if (widget.isEditing) {
              context.read<MemoryDeskBloc>().add(const GetMemoryDesks());
            }
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BlocConsumer<MemoryDeskBloc, MemoryDeskState>(
        listener: (context, state) {
          if (state is Success) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => SuccessDialogWidget(
                title: l10n.ready,
                subtitle: widget.isEditing
                    ? l10n.mdScreenDeskEdited
                    : l10n.mdScreenDeskCreated,
                onPressed: () {
                  GoRouter.of(context).go('/home');
                  context.read<MemoryDeskBloc>().add(const GetMemoryDesks());
                },
              ),
            );
          }
        },
        builder: (context, state) => LoadingOverlay(
          isLoading: state is Loading,
          child: SizedBox(
            height: screenHeight,
            child: AspectRatio(
              aspectRatio: 10 / 8,
              child: TabContainer(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                controller: _tabController,
                curve: Curves.easeIn,
                transitionBuilder: (child, animation) {
                  animation =
                      CurvedAnimation(curve: Curves.easeIn, parent: animation);
                  return SlideTransition(
                    position: Tween(
                      begin: const Offset(0.2, 0.0),
                      end: const Offset(0.0, 0.0),
                    ).animate(animation),
                    child: FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  );
                },
                colors: <Color>[backgroundColor, backgroundColor],
                tabs: [
                  ValueListenableBuilder<int>(
                    valueListenable: _selectedIndex,
                    builder: (context, selectedIndex, child) {
                      return Text(
                        l10n.mdScreenInformation,
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: selectedIndex == 0
                                      ? Colors.white
                                      : Colors.black,
                                ),
                      );
                    },
                  ),
                  ValueListenableBuilder<int>(
                    valueListenable: _selectedIndex,
                    builder: (context, selectedIndex, child) {
                      return Text(
                        l10n.mdScreenMedia,
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: selectedIndex == 1
                                      ? Colors.white
                                      : Colors.black,
                                ),
                      );
                    },
                  ),
                ],
                child: MemoryCreationScreenBody(
                  l10n: l10n,
                  tabController: _tabController,
                  formKey: _formKey,
                  memoryPageData: _memoryPageData,
                  updateProfileData: _updateProfileData,
                  mediaData: _mediaData,
                  updateMediaData: _updateMediaData,
                  initialMemoryDesk: widget.initialMemoryDesk,
                  isEditing: widget.isEditing,
                  deskId: widget.deskId,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
