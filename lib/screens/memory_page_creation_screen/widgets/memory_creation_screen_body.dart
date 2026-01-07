import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/localization/app_localizations.dart';
import 'package:ritual_app/utils/utils.dart';

class MemoryCreationScreenBody extends StatelessWidget {
  final AppLocalizations l10n;
  final TabController tabController;
  final GlobalKey<FormState> formKey;
  final MemoryDesk memoryPageData;
  final EditableMedia mediaData;
  final Function(MemoryDesk) updateProfileData;
  final Function(EditableMedia) updateMediaData;
  final MemoryDesk? initialMemoryDesk;
  final bool isEditing;
  final String? deskId;

  const MemoryCreationScreenBody({
    super.key,
    required this.tabController,
    required this.formKey,
    required this.memoryPageData,
    required this.updateProfileData,
    required this.mediaData,
    required this.updateMediaData,
    required this.isEditing,
    this.initialMemoryDesk,
    this.deskId,
    required this.l10n,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              BiographyTabWidget(
                l10n: l10n,
                formKey: formKey,
                profileData: memoryPageData,
                onProfileDataChanged: updateProfileData,
              ),
              NewMediaTabWidget(
                media: mediaData,
                onChanged: updateMediaData,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        ActionButton(
          width: screenWidth - 50,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              // If editing, you might dispatch an Update event instead of Upload.
              if (formKey.currentState!.validate()) {
                if (isEditing && deskId != null) {
                  // Dispatch UpdateMemoryDesk when editing:
                  BlocProvider.of<MemoryDeskBloc>(context).add(
                    UpdateMemoryDesk(
                      deskId: deskId!,
                      memoryPage: memoryPageData,
                      newMedia: mediaData,
                    ),
                  );
                } else {
                  // Dispatch UploadMemoryDesk when creating new:
                  BlocProvider.of<MemoryDeskBloc>(context).add(
                    UploadMemoryDesk(
                      memoryPage: memoryPageData,
                      mediaData: mediaData,
                    ),
                  );
                }
              }
            }
          },
          title: isEditing ? l10n.mdScreenChange : l10n.mdScreenCreate,
        ),
        const SizedBox(height: 8),
        if (!isEditing)
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Center(
              child: TextButton(
                onPressed: () {
                  GoRouter.of(context).go(
                    '/home/mp_creation/mp_preview_screen',
                    extra: {
                      'memoryPageData': memoryPageData,
                      'mediaData': mediaData,
                    },
                  );
                },
                child: Text(
                  l10n.mdScreenPreview,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
