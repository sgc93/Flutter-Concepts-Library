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
    return TabBarView(
      children: [
        const Center(
          child: Icon(Icons.camera_alt),
        ),
        Center(
          child: _sampleChats(),
        ),
        const Center(
          child: Text('Status'),
        ),
        const Center(
          child: Icon(Icons.call),
        ),
      ],
    );
  }

  _sampleChats() {
    return ListView(
      children: [
        _getChat(
          'assets/images/github.png',
          'gitHubers',
          'Sami: do you part man',
          '3:45',
        ),
        _getChat(
          'assets/images/codeSpoon.png',
          'codeSpoon',
          'Alex: what about the last matching ...',
          '1:45',
        ),
        _getChat(
          'assets/images/linkedIn.png',
          'linkedIners',
          'Sami: my profile is about ...',
          '8:45',
        ),
        _getChat(
          'assets/images/github.png',
          'gitHubers',
          'Sami: do you part man',
          '3:45',
        ),
        _getChat(
          'assets/images/github.png',
          'gitHubers',
          'Sami: do you part man',
          '3:45',
        ),
        _getChat(
          'assets/images/github.png',
          'gitHubers',
          'Sami: do you part man',
          '3:45',
        ),
        _getChat(
          'assets/images/github.png',
          'gitHubers',
          'Sami: do you part man',
          '3:45',
        ),
        _getChat(
          'assets/images/codeSpoon.png',
          'codeSpoon',
          'Alex: what about the last matching ...',
          '1:45',
        ),
        _getChat(
          'assets/images/google.png',
          'Googlers',
          'Sami: my profile is about ...',
          '8:45',
        ),
      ],
    );
  }

  _getChat(
    imgAddress,
    ppName,
    latest,
    time,
  ) {
    return Card(
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(imgAddress),
        ),
        title: Text(ppName),
        subtitle: Text(latest),
        trailing: Text(time),
      ),
    );
  }
}
