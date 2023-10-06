import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentBarIndex = 0;
  int currentRailIndex = 0;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return deviceWidth < 500
        ? Scaffold(
            appBar: _appBar(deviceWidth, deviceHeight),
            body: Center(
              child: Text('Dimension = $deviceWidth X $deviceHeight'),
            ),
            bottomNavigationBar: _navigationBar(),
          )
        : Scaffold(
            appBar: _appBar(deviceWidth, deviceHeight),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _navigationRail(),
                Center(
                  child: Text('Dimension = $deviceWidth X $deviceHeight'),
                ),
              ],
            ),
          );
  }

  _navigationBar() {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentBarIndex = index;
        });
      },
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'HOME'),
        NavigationDestination(icon: Icon(Icons.business), label: 'BUSINESS'),
        NavigationDestination(icon: Icon(Icons.school), label: 'SCHOOL'),
      ],
      selectedIndex: currentBarIndex,
    );
  }

  _appBar(deviceWidth, deviceHeight) {
    return AppBar(
      title: Text(
        deviceWidth > 500 ? 'Desktop Layout' : 'Mobile Layout',
      ),
      backgroundColor: deviceWidth > 500 ? Colors.deepPurple : Colors.amber,
    );
  }

  _navigationRail() {
    return NavigationRail(
      onDestinationSelected: (index) {
        setState(() {
          currentRailIndex = index;
        });
      },
      destinations: const [
        NavigationRailDestination(icon: Icon(Icons.home), label: Text('HOME')),
        NavigationRailDestination(
            icon: Icon(Icons.business), label: Text('BUSINESS')),
        NavigationRailDestination(
            icon: Icon(Icons.school), label: Text('SCHOOL')),
      ],
      selectedIndex: currentRailIndex,
      labelType: NavigationRailLabelType.selected,
    );
  }
}
