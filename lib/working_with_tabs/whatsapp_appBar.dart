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
          elevation: 3,
          backgroundColor: Colors.green,
          title: const Text('WhatsApp'),
          actions: const [
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            tabs: _getTabs(),
            indicatorColor: Colors.white,
            indicatorWeight: 6,
          ),
        ),
        body: _getContents(),
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

  TabBarView _getContents() {
    return const TabBarView(
      children: [
        Center(
          child: Icon(Icons.camera_alt),
        ),
        Center(
          child: Icon(Icons.chat),
        ),
        Center(
          child: Text('Status'),
        ),
        Center(
          child: Icon(Icons.call),
        ),
      ],
    );
  }
}
