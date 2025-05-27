import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/memory_page_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/utils.dart';

class MemoryDesksListScreen extends StatelessWidget {
  final AppLocalizations l10n;
  const MemoryDesksListScreen({
    super.key,
    required this.l10n,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<MemoryDeskBloc, MemoryDeskState>(
        builder: (context, state) {
          Widget body = SizedBox.shrink();

          if (state is MemoryPagesLoaded) {
            body = Padding(
              padding: const EdgeInsets.all(16.0),
              child: MemoryDesksListScreenBody(
                l10n: l10n,
                memoryDesks: state.memoryPages,
                memoryDeskIds: state.memoryDeskIds,
              ),
            );
          }
          return Stack(
            children: [
              body,
              if (state is Loading)
                Center(
                  child: SizedBox(
                    height: 85,
                    width: 85,
                    child: RepaintBoundary(
                      child: Loader(),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
