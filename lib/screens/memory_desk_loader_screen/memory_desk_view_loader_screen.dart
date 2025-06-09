// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ritual_app/entities/entities.dart';
// import 'package:ritual_app/screens/memory_page_view_screen/widgets/widgets.dart';
// import 'package:ritual_app/services/service_locator.dart';

// class MemoryPageViewScreen extends StatelessWidget {
//   // final MemoryDesk memoryPage;
//   // const MemoryPageViewScreen({super.key, required this.memoryPage});

//   // @override
//   // Widget build(BuildContext context) {
//   //   return kIsWeb
//   //       ? const MemoryPageWebBodyWidget()
//   //       : MemoryPageMobileBodyWidget(memoryPageData: memoryPage);
//   // }

//   final String deskId;
//   const MemoryPageViewScreen({super.key, required this.deskId});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) {

//         bloc.add(QrCamLoadMemoryDesk(memoryDeskId: deskId));
//         return bloc;
//       },
//       child: BlocConsumer<QrCamBloc, QrCamState>(
//         listener: (ctx, state) {
//           if (state is QrCamMemoryDeskLoaded) {
//             // replace this loader with the real view, passing the loaded page
//             context.go(
//               '/memory/$deskId',
//               extra: state.memoryPage,
//             );
//           }
//           if (state is QrCamError) {
//             // show an error
//           }
//         },
//         builder: (ctx, state) {
//           if (state is QrCamLoading) {
//             return const Center(child: CircularProgressIndicator());
//           }
//           // fallback: blank
//           return const SizedBox.shrink();
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';

class MemoryViewLoaderScreen extends StatefulWidget {
  final String deskId;
  const MemoryViewLoaderScreen({super.key, required this.deskId});

  @override
  State<MemoryViewLoaderScreen> createState() => _MemoryViewLoaderScreenState();
}

class _MemoryViewLoaderScreenState extends State<MemoryViewLoaderScreen> {
  bool _hasLoaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_hasLoaded) {
      // dispatch only once
      BlocProvider.of<QrCamBloc>(context).add(
        QrCamLoadMemoryDesk(memoryDeskId: widget.deskId),
      );
      _hasLoaded = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QrCamBloc, QrCamState>(
      listener: (ctx, state) {
        if (state is QrCamMemoryDeskLoaded) {
          // navigate into the "real" view route,
          // preserving the same URL so you don't stack
          GoRouter.of(context).go(
            '/home/mp_view_screen/${state.memoryDeskId}',
            extra: state.memoryPage,
          );
        }
        if (state is QrCamError) {
          // show some error UI
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Ошибка: ${state.error}')),
          );
        }
      },
      builder: (ctx, state) {
        if (state is QrCamLoading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        // once we navigate on Loaded, this widget is popped off,
        // so here you can just render an empty container
        return const Scaffold(body: SizedBox.shrink());
      },
    );
  }
}
