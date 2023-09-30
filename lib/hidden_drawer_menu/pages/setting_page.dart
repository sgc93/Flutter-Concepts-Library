import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
  final TextStyle styleBig = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  final TextStyle styleSmall = const TextStyle(
    color: Colors.white70,
    fontWeight: FontWeight.bold,
  );

  final Icon toggleIcon = const Icon(
    Icons.toggle_on,
    size: 36,
    color: Colors.white70,
  );

  @override
  Widget build(BuildContext context) {
    late double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(53, 58, 64, 1),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 100),
          width: deviceWidth * 0.8,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Enable dark mode',
                  style: styleBig,
                ),
                subtitle: Text(
                  'dark mode enabled',
                  style: styleSmall,
                ),
                trailing: toggleIcon,
              ),
              ListTile(
                title: Text(
                  'Enable alarm snoozing',
                  style: styleBig,
                ),
                subtitle: Text(
                  'handle snoozability of your alarms',
                  style: styleSmall,
                ),
                trailing: toggleIcon,
              ),
              ListTile(
                title: Text(
                  'Automatically connect to wifi',
                  style: styleBig,
                ),
                subtitle: Text(
                  'turn on program when there is wifi',
                  style: styleSmall,
                ),
                trailing: toggleIcon,
              ),
              ListTile(
                title: Text(
                  'Handle Errors with AI',
                  style: styleBig,
                ),
                subtitle: Text(
                  'disabled',
                  style: styleSmall,
                ),
                trailing: toggleIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
