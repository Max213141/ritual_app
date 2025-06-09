import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/utils/utils.dart';

class DeletionConfirmDialog extends StatelessWidget {
  final MemoryDesk memoryDesk;
  final String deskId;
  const DeletionConfirmDialog({
    super.key,
    required this.memoryDesk,
    required this.deskId,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    return AlertDialog(
      title: Text(l10n.mdScreenDeletionTitle),
      content: Text(l10n.mdScreenDeletionText),
      actions: [
        TextButton(
          onPressed: () => GoRouter.of(context).pop(), // simply close
          child: Text(l10n.no),
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).pop(); // close dialog first
            _deleteDesk(context, memoryDesk);
          },
          child: Text(
            l10n.mdScreenDeletionAgreement,
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }

  void _deleteDesk(BuildContext context, MemoryDesk desk) {
    BlocProvider.of<MemoryDeskBloc>(context).add(
      DeleteMemoryDesk(
        deskId: deskId,
        photoUrls: desk.photoUrls,
        videoUrls: desk.videoUrls,
        avatarUrl: desk.photoUrl,
      ),
    );
  }
}
