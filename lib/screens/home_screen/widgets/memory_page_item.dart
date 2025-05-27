import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/home_screen/widgets/widgets.dart';

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
        '${widget.memoryDesk.firstName} ${widget.memoryDesk.middleName} ${widget.memoryDesk.lastName}';

    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeInOut,
      height: 100,
      width: double.infinity,
      child: RepaintBoundary(
        child: Card(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              const SizedBox(width: 12),
              CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Icon(Icons.person, color: Colors.grey[600]),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 150),
                transitionBuilder: (child, animation) =>
                    FadeTransition(opacity: animation, child: child),
                child: isExpanded
                    ? _buildActions(context)
                    : IconButton(
                        key: const ValueKey('more'),
                        icon: const Icon(Icons.more_horiz, size: 24),
                        onPressed: () => setState(() => isExpanded = true),
                      ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      key: const ValueKey('actions'),
      children: [
        ActionIcon(
          icon: Icons.visibility,
          tooltip: 'Просмотр',
          onTap: () => _handleAction(() => openPreview(context)),
        ),
        const SizedBox(width: 8),
        ActionIcon(
          icon: Icons.qr_code,
          tooltip: 'QR-код',
          onTap: () => _handleAction(() => openQrPreview(context)),
        ),
        const SizedBox(width: 8),
        ActionIcon(
          icon: Icons.close,
          tooltip: 'Закрыть',
          onTap: () => setState(() => isExpanded = false),
        ),
      ],
    );
  }

  void _handleAction(VoidCallback action) {
    setState(() => isExpanded = false);
    Future.microtask(action);
  }

  void openPreview(BuildContext context) async {
    GoRouter.of(context).go(
      '/home/mp_view_screen/${widget.memoryDeskId}',
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
