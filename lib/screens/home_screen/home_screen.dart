import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/home_screen/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<MemoryPage> memoryPages = [
      MemoryPage(name: 'Романова Мария Александровна'),
      MemoryPage(name: 'Кузнецов Михаил Павлович'),
      MemoryPage(name: 'Соколова Екатерина Алексеевна'),
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Row(
              //       children: [
              //         Icon(Icons.square_outlined),
              //         SizedBox(width: 8),
              //         Text(
              //           'Название',
              //           style: TextStyle(
              //               fontSize: 18, fontWeight: FontWeight.bold),
              //         ),
              //       ],
              //     ),
              //     Icon(Icons.menu),
              //   ],
              // ),
              const SizedBox(height: 20),
              const Text(
                'Страницы памяти',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: MediaQuery.of(context).size.height * .5,
                child: ListView.builder(
                  itemCount: memoryPages.length,
                  itemBuilder: (context, index) {
                    return MemoryPageItem(memoryPage: memoryPages[index]);
                  },
                ),
              ),
              // const SizedBox(height: 16),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    GoRouter.of(context).go('/home/mp_creation');
                  },
                  child: const Text('+Новая страница'),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).go('/qr_scan');
        },
        mini: true,
        child: const Icon(Icons.fullscreen),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
