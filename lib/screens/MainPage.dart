import 'package:flutter/material.dart';
import "LiveStreams.dart";

class MainPage extends StatefulWidget {
  const MainPage();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

//list of widgets to call ontap
  final widgetOptions = [
    new Text("Homepagei"),
    new LiveStreams(),
    new Text("test3"),
    new Text("test4"),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final widgetTitle = ["PeerStream", "Live Streams", "Call", "Wallet Connect"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widgetTitle.elementAt(selectedIndex)),
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(
          27,
          34,
          46,
          1,
        ),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv),
            label: 'Live Streams',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Mint Video NFT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet Connect',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedLabelStyle: TextStyle(color: Colors.red, fontSize: 20),
      ),
    );
  }
}
