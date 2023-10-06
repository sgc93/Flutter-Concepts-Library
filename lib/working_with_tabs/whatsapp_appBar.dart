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
          backgroundColor: const Color.fromRGBO(40, 209, 70, 1),
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
        floatingActionButton: _addNewChatButton(),
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
          3,
        ),
        _getChat(
          'assets/images/codeSpoon.png',
          'codeSpoon',
          'Alex: what about the last matching ...',
          '1:45',
          0,
        ),
        _getChat(
          'assets/images/linkedIn.png',
          'linkedIners',
          '...',
          '8:45',
          35,
        ),
        _getChat(
          'assets/images/github.png',
          'gitHubers',
          'Sami: do you part man',
          '3:45',
          0,
        ),
        _getChat(
          'assets/images/github.png',
          'gitHubers',
          'Sami: do you part man',
          '3:45',
          0,
        ),
        _getChat(
          'assets/images/github.png',
          'gitHubers',
          '...',
          '3:45',
          0,
        ),
        _getChat(
          'assets/images/github.png',
          'gitHubers',
          'Sami: do you part man',
          '3:45',
          0,
        ),
        _getChat(
          'assets/images/codeSpoon.png',
          'codeSpoon',
          'Alex: what about the last matching ...',
          '1:45',
          3,
        ),
        _getChat(
          'assets/images/google.png',
          'Googlers',
          'Sami: my profile is about ...',
          '8:45',
          0,
        ),
      ],
    );
  }

  _getChat(
    imgAddress,
    ppName,
    latest,
    time,
    newChat,
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
        subtitle: latest == '...'
            ? const Text(
                'Typing ...',
                style: TextStyle(
                  color: Color.fromRGBO(0, 255, 47, 1),
                ),
              )
            : Text(latest),
        trailing: newChat == 0
            ? Text(time)
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    time,
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      newChat.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _addNewChatButton() {
    return FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 6, 168, 12),
      onPressed: () {},
      child: Transform.rotate(
        angle: 135,
        child: const Icon(Icons.chat_sharp),
      ),
    );
  }
}
