import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'models/global.dart';
import "screens/HomePage.dart";

GlobalKey<NavigatorState> _navigator = GlobalVariable.navState;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(App());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onUnknownRoute: (RouteSettings settings) =>
            MaterialPageRoute(builder: (context) => MyHomePage()),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        navigatorObservers: [],
        routes: {
          '/': (context) => MyHomePage(),
        },
        color: Color.fromRGBO(
          33,
          37,
          41,
          1,
        ));
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); // 1
    return FutureBuilder(
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Text("Error");
        }
        return MyApp();
      },
    );
  }
}
