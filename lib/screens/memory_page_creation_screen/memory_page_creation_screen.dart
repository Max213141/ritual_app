import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/entities/db_entities/memory_page/local_memory_page_media.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/common_widget/widgets.dart';
import 'package:tab_container/tab_container.dart';

class MemoryPageCreationScreen extends StatefulWidget {
  const MemoryPageCreationScreen({super.key});

  @override
  State<MemoryPageCreationScreen> createState() =>
      _MemoryPageCreationScreenState();
}

class _MemoryPageCreationScreenState extends State<MemoryPageCreationScreen>
    with SingleTickerProviderStateMixin {
  late GlobalKey<FormState> _formKey;
  late TabController _tabController;
  MemoryPage? _memoryPageData;
  late LocalMemoryPageMedia _mediaData;
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      _selectedIndex.value = _tabController.index;
    });
    _memoryPageData = MemoryPage(
      lastName: '',
      firstName: '',
      middleName: '',
      dateOfBirth: '',
      dateOfDeath: '',
      epitaphy: '',
      biography: '',
      photoUrl: '',
      isPrivate: false,
      password: '',
    );
    _mediaData = LocalMemoryPageMedia(
      photos: [],
      videos: [],
    );
    super.initState();
  }

  void _updateProfileData(MemoryPage updatedData) {
    setState(() {
      _memoryPageData = updatedData;
    });
  }

  void _updateMediaData(LocalMemoryPageMedia updatedData) {
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
    final double screenHeight = MediaQuery.of(context).size.height;

    final Color backgroundColor = Theme.of(context).scaffoldBackgroundColor;
    // final List<String> tabsNames = ['Информация', 'Медиа Файлы'];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Создание страницы',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => GoRouter.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        height: screenHeight,
        child: AspectRatio(
          aspectRatio: 10 / 8,
          child: TabContainer(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
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
                    'Информация',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color:
                              selectedIndex == 0 ? Colors.white : Colors.black,
                        ),
                  );
                },
              ),
              ValueListenableBuilder<int>(
                valueListenable: _selectedIndex,
                builder: (context, selectedIndex, child) {
                  return Text(
                    'Медиа Файлы',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color:
                              selectedIndex == 1 ? Colors.white : Colors.black,
                        ),
                  );
                },
              ),
            ],
            child: Column(
              children: [
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      BiographyTabWidget(
                        formKey: _formKey,
                        profileData: _memoryPageData!,
                        onProfileDataChanged: _updateProfileData,
                      ),
                      MediaTabWidget(
                        mediaData: _mediaData,
                        onMediaDataChanged: _updateMediaData,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                ActionButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Implement page creation logic
                    }
                  },
                  title: 'Создать страницу',
                ),
                const SizedBox(height: 8),
                Center(
                  child: TextButton(
                    onPressed: () {
                      GoRouter.of(context).go(
                        '/home/mp_plan_selection/mp_creation/mp_preview_screen',
                        extra: {
                          'memoryPageData': _memoryPageData,
                          'mediaData': _mediaData,
                        },
                      );
                    },
                    child: const Text('Предварительный просмотр'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}










// Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           const Text('Text'),
//           StreamBuilder<double>(
//             stream: _progressController.stream,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Column(
//                   children: [
//                     LinearProgressIndicator(value: snapshot.data! / 100),
//                     Text('${snapshot.data!.toStringAsFixed(2)}%')
//                   ],
//                 );
//               } else {
//                 return Container();
//               }
//             },
//           ),
//         ],
//       ),