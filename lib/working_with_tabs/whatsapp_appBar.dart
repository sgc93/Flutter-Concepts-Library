import 'package:flutter/material.dart';

class WhatsAppTab extends StatelessWidget {
  const WhatsAppTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('WhatsApp'),
          actions: const [
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            tabs: _getTabs(),
          ),
        ),
      ),
    );
  }

  List<Tab> _getTabs() {
    return const [
      Tab(
        icon: Icon(Icons.camera_alt),
      ),
      Tab(
        child: Text('CHATS'),
      ),
      Tab(
        child: Text('STATUS'),
      ),
      Tab(
        child: Text('CALLS'),
      ),
    ];
  }
}
