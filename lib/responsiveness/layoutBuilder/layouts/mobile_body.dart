import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        leading: const Icon(Icons.mobile_friendly),
        title: const Text('MOBILE LAYOUT'),
      ),
      body: Column(
        children: [
          // video
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 8,
              child: Container(
                height: 200,
                color: Colors.deepPurple[400],
                child: const Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Y O U T U B E - V I D E O \n container',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 8 / 2,
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.all(8),
                    color: Colors.deepPurple[300],
                    child: Center(
                      child: Text(
                        index == 0
                            ? 'comments \n container'
                            : 'recommendation \n container',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
