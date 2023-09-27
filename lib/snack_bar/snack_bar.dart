import 'package:flutter/material.dart';

class SnackBarWidget extends StatefulWidget {
  const SnackBarWidget({super.key});

  @override
  State<SnackBarWidget> createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  String deletedItem = '';
  int deleteIndex = 0;
  final List<String> _taskList = [
    'Check uncle shebelaw.',
    'Go to st. Lalibela church',
    'Do at least 3 semi-projects',
    'Finish the last seasons of GOT',
    'Translate app ideas to design',
    'Start the weekly challenge',
    'Manage social media accounts',
    'Guess the cause of covid 20',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: const Icon(Icons.menu),
        title: const Text('SnackNote'),
      ),
      body: ListView.builder(
        itemCount: _taskList.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey[300],
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              title: Text(
                _taskList[index],
                style: TextStyle(
                  color: Colors.blue[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                DateTime.now().toString(),
                style: TextStyle(
                  color: Colors.blue[400],
                ),
              ),
              trailing: GestureDetector(
                key: Key(_taskList[index]),
                onTap: () {
                  setState(() {
                    deleteIndex = index;
                    deletedItem = _taskList[index];
                    _taskList.removeAt(index);
                    _displaySnackBar();
                  });
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
