import 'package:flutter/material.dart';

class MemoryPageWebBodyWidget extends StatefulWidget {
  const MemoryPageWebBodyWidget({super.key});

  @override
  State<MemoryPageWebBodyWidget> createState() =>
      _MemoryPageWebBodyWidgetState();
}

class _MemoryPageWebBodyWidgetState extends State<MemoryPageWebBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 300,
            color: Colors.grey[800],
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile_image.jpg'),
                ),
                SizedBox(height: 20),
                Text(
                  'Романова Мария Александровна',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '01.05.1970 - 03.08.2022',
                  style: TextStyle(color: Colors.white70),
                ),
                SizedBox(height: 20),
                Text(
                  'Любим тебя, и в памяти\nНашей всегда ты жива',
                  style: TextStyle(
                      color: Colors.white70, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Биография',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    const Text('Биографический текст...'),
                    const SizedBox(height: 20),
                    const Text('Фото',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.grey[300],
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Видео',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
