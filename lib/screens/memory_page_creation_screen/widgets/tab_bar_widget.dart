import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;
  final List<String> tabs;

  const TabBarWidget({
    super.key,
    required this.tabController,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: TabBar(
        controller: tabController,
        tabs: tabs.map((String tab) => Tab(text: tab)).toList(),
        indicator: chooseDecoration(),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.white,
        labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize: 16),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Decoration chooseDecoration() {
    if (tabs.first == 'Biography') {
      return CustomTabIndicator();
    } else {
      return CustomTabIndicator2();
    }
  }
}

class CustomTabIndicator2 extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomTabIndicatorPainter2();
  }
}

class _CustomTabIndicatorPainter2 extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect rect = offset & configuration.size!;
    final Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    final Path path = Path();
    path.moveTo(rect.left, rect.top);
    path.quadraticBezierTo(
      rect.right,
      rect.bottom / 2,
      rect.right - 30,
      rect.bottom,
    );
    path.lineTo(rect.left, rect.bottom);
    path.close();

    canvas.drawPath(path, paint);
  }
}

class CustomTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomTabIndicatorPainter();
  }
}

class _CustomTabIndicatorPainter extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect rect = offset & configuration.size!;
    final Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    final Path path = Path();
    path.moveTo(rect.left, rect.top);
    path.lineTo(rect.right - 30, rect.top);
    path.quadraticBezierTo(
      rect.right,
      rect.bottom / 2,
      rect.right - 30,
      rect.bottom,
    );
    path.lineTo(rect.left, rect.bottom);
    path.close();

    canvas.drawPath(path, paint);
  }
}
