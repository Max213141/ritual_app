import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_desk_view_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/utils.dart';

class MemoryPageViewScreen extends StatelessWidget {
  final MemoryDesk memoryDesk;
  final String id;
  const MemoryPageViewScreen({
    super.key,
    required this.memoryDesk,
    required this.id,
  });

  // LocalMemoryPageMedia? _localMedia;
  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    return Scaffold(
      appBar: AppBar(
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
                  'memoryPageData': memoryDesk,
                  'id': id,
                  'isEditing': true,
                },
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete_forever, color: Colors.redAccent),
            onPressed: () => showDialog(
              context: context,
              builder: (context) => DeletionConfirmDialog(
                memoryDesk: memoryDesk,
                deskId: id,
              ),
            ),
          ),
        ],
      ),
      body: BlocConsumer<MemoryDeskBloc, MemoryDeskState>(
        listener: (context, state) {
          if (state is DeletionSuccess) {
            GoRouter.of(context).go('/home');
            context.read<MemoryDeskBloc>().add(const GetMemoryDesks());
          }
        },
        builder: (context, state) {
          return LoadingOverlay(
            isLoading: state is Loading,
            child: MemoryDeskViewBody(
              l10n: l10n,
              memoryDesk: memoryDesk,
              id: id,
            ),
          );
        },
      ),
    );
  }
}
