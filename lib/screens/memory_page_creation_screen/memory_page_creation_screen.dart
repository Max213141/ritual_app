import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';

class MemoryPageCreationScreen extends StatefulWidget {
  const MemoryPageCreationScreen({super.key});

  @override
  _MemoryPageCreationScreenState createState() =>
      _MemoryPageCreationScreenState();
}

class _MemoryPageCreationScreenState extends State<MemoryPageCreationScreen>
    with SingleTickerProviderStateMixin {
  late GlobalKey<FormState> _formKey;
  late TabController _tabController;
  late MemoryPage _profileData;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _tabController = TabController(length: 2, vsync: this);
    _profileData = MemoryPage(
      lastName: '',
      firstName: '',
      middleName: '',
      dateOfBirth: DateTime.now(),
      dateOfDeath: DateTime.now(),
      epitaphy: '',
      biography: '',
      photoUrl: '',
      isPrivate: false,
      password: '',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Создание страницы'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => GoRouter.of(context).pop(),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Biography'),
            Tab(text: 'Media files'),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: RepaintBoundary(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    BiographyTabWidget(
                      profileData: _profileData,
                      formKey: _formKey,
                    ),
                    MediaTabWidget(profileData: _profileData),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Implement page creation logic
                  }
                },
                child: const Text('Создать страницу'),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: TextButton(
                onPressed: () {
                  GoRouter.of(context).go(
                    '/home/mp_plan_selection/mp_creation/mp_preview_screen',
                  );
                },
                child: const Text('Предварительный просмотр'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}










// Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           const Text('Text'),
//           StreamBuilder<double>(
//             stream: _progressController.stream,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Column(
//                   children: [
//                     LinearProgressIndicator(value: snapshot.data! / 100),
//                     Text('${snapshot.data!.toStringAsFixed(2)}%')
//                   ],
//                 );
//               } else {
//                 return Container();
//               }
//             },
//           ),
//         ],
//       ),