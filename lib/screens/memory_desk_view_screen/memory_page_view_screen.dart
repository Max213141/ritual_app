import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_desk_view_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/utils.dart';

class MemoryPageViewScreen extends StatefulWidget {
  final MemoryDesk? memoryDesk;
  final String id;
  const MemoryPageViewScreen({
    super.key,
    this.memoryDesk,
    required this.id,
  });

  @override
  State<MemoryPageViewScreen> createState() => _MemoryPageViewScreenState();
}

class _MemoryPageViewScreenState extends State<MemoryPageViewScreen> {
  late MemoryDesk localMemoryDesk;

  @override
  void initState() {
    if (kIsWeb) {
      BlocProvider.of<MemoryDeskBloc>(context).add(
        LoadMemoryDesk(
          memoryDeskId: widget.id,
        ),
      );
    }

    super.initState();
  }

  // LocalMemoryPageMedia? _localMedia;
  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    return Scaffold(
      appBar: kIsWeb
          ? AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.grey[600]),
                onPressed: () => GoRouter.of(context).pop(),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.grey),
                  onPressed: () {
                    // Navigate to the  creation screen, passing our MemoryDesk:
                    GoRouter.of(context).go(
                      '/home/mp_creation',
                      extra: {
                        'memoryPageData': widget.memoryDesk,
                        'id': widget.id,
                        'isEditing': true,
                      },
                    );
                  },
                ),
                IconButton(
                  icon:
                      const Icon(Icons.delete_forever, color: Colors.redAccent),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => DeletionConfirmDialog(
                      memoryDesk: widget.memoryDesk!,
                      deskId: widget.id,
                    ),
                  ),
                ),
              ],
            )
          : null,
      body: BlocConsumer<MemoryDeskBloc, MemoryDeskState>(
        listener: (context, state) {
          if (state is DeletionSuccess) {
            GoRouter.of(context).go('/home');
            context.read<MemoryDeskBloc>().add(const GetMemoryDesks());
          }
        },
        builder: (context, state) {
          Widget body = LoadingOverlay(
            isLoading: true,
            child: SizedBox.shrink(),
          );
          if (!kIsWeb) {
            body = LoadingOverlay(
              isLoading: state is Loading,
              child: MemoryDeskViewBody(
                l10n: l10n,
                memoryDesk: widget.memoryDesk!,
                id: widget.id,
              ),
            );
          }
          if (kIsWeb && state is MemoryDeskLoaded) {
            body = LoadingOverlay(
              isLoading: state is Loading,
              child: MemoryDeskViewBody(
                l10n: l10n,
                memoryDesk: state.memoryDesk,
                id: state.memoryDeskIds,
              ),
            );
          }
          return body;
        },
      ),
    );
  }
}
