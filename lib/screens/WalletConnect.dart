import 'package:flutter/material.dart';
import 'package:web3_connect/web3_connect.dart';
import 'MainPage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Web3Connect connection = Web3Connect();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      child: const Text("Log In"),
      onPressed: () async {
        await connection.connect();

        if (connection.account != "") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => Home(connection: connection))));
        }
      },
    ));
  }
}

class Home extends StatefulWidget {
  const Home({Key? key, required this.connection}) : super(key: key);
  final Web3Connect connection;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _moveToScreen2(BuildContext context) =>
      Navigator.pushReplacementNamed(context, "screen2");
  bool killed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              _moveToScreen2(context);
            }),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(widget.connection.account),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  await widget.connection.disconnect();
                  setState(() {
                    killed = true;
                  });
                },
                child: const Text("Kill Session")),
            const SizedBox(
              height: 20,
            ),
            killed
                ? const Text(
                    "Session Killed",
                    style: TextStyle(color: Colors.red),
                  )
                : const Text("Session Connected"),
          ],
        ),
      ),
    );
  }
}
