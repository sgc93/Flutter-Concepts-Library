import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentBarIndex = 0;
  int currentRailIndex = 0;

  final int widthBreakPoint = 700;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return deviceWidth < widthBreakPoint
        ? Scaffold(
            backgroundColor: Colors.blue[200],
            appBar: _appBar(deviceWidth, deviceHeight),
            body: Center(
              child: Text(
                'Dimension = ${deviceWidth.round()} X ${deviceHeight.round()}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            bottomNavigationBar: _navigationBar(),
          )
        : Scaffold(
            backgroundColor: Colors.blue[200],
            appBar: _appBar(deviceWidth, deviceHeight),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _navigationRail(),
                Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Center(
                    child: Text(
                      'Dimension = ${deviceWidth.round()} X ${deviceHeight.round()}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
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
      backgroundColor: Colors.blue,
      indicatorColor: Colors.white,
    );
  }

  _appBar(deviceWidth, deviceHeight) {
    return AppBar(
      title: Text(
        deviceWidth > widthBreakPoint ? 'DESKTOP LAYOUT' : 'MOBILE LAYOUT',
      ),
      leading: Icon(
        deviceWidth > widthBreakPoint
            ? Icons.desktop_mac
            : Icons.mobile_friendly,
      ),
      backgroundColor: Colors.blue,
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
      backgroundColor: Colors.blue,
      selectedLabelTextStyle: const TextStyle(color: Colors.white),
    );
  }
}
