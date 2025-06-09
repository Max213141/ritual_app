import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/utils/utils.dart';

class MemoryPageItem extends StatefulWidget {
  final MemoryDesk memoryDesk;
  final String memoryDeskId;

  const MemoryPageItem({
    super.key,
    required this.memoryDesk,
    required this.memoryDeskId,
  });

  @override
  State<MemoryPageItem> createState() => _MemoryPageItemState();
}

class _MemoryPageItemState extends State<MemoryPageItem>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final name =
        '${widget.memoryDesk.firstName} ${widget.memoryDesk.middleName}\n${widget.memoryDesk.lastName}';
    final displayImage = (widget.memoryDesk.photoUrl != null &&
            widget.memoryDesk.photoUrl!.isNotEmpty
        ? NetworkImage(widget.memoryDesk.photoUrl!)
        : null);
    return GestureDetector(
      onTap: () => _handleAction(() => openPreview(context)),
      child: SizedBox(
        height: 100,
        child: Card(
          margin: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              const SizedBox(width: 12),
              displayImage != null
                  ? SizedBox(
                      height: 55,
                      width: 55,
                      child: CircleAvatar(
                        backgroundImage: displayImage,
                      ),
                    )
                  : SizedBox(
                      height: 55,
                      width: 55,
                      child: RitualAppSvgPicture(
                        picture: 'assets/icons/empty_photo.svg',
                      ),
                    ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              IconButton(
                key: const ValueKey('QR-код'),
                icon: const Icon(Icons.qr_code, size: 24),
                onPressed: () => _handleAction(
                  () => openQrPreview(context),
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildActions(BuildContext context) {
  //   return Row(
  //     key: const ValueKey('actions'),
  //     children: [
  //       ActionIcon(
  //         icon: Icons.visibility,
  //         tooltip: 'Просмотр',
  //         onTap: () => _handleAction(() => openPreview(context)),
  //       ),
  //       const SizedBox(width: 8),
  //       ActionIcon(
  //         icon: Icons.qr_code,
  //         tooltip: 'QR-код',
  //         onTap: () => _handleAction(() => openQrPreview(context)),
  //       ),
  //       const SizedBox(width: 8),
  //       ActionIcon(
  //         icon: Icons.close,
  //         tooltip: 'Закрыть',
  //         onTap: () => setState(() => isExpanded = false),
  //       ),
  //     ],
  //   );
  // }

  void _handleAction(VoidCallback action) {
    setState(() => isExpanded = false);
    Future.microtask(action);
  }

  void openPreview(BuildContext context) async {
    GoRouter.of(context).go(
      '/home/md_view_screen/${widget.memoryDeskId}',
      extra: widget.memoryDesk,
    );
  }

  void openQrPreview(BuildContext context) {
    GoRouter.of(context).go(
      '/home/qr_preview',
      extra: {'memoryDeskId': widget.memoryDeskId},
    );
  }
}
