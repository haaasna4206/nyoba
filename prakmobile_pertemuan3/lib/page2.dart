import 'package:flutter/material.dart';

class Page2  extends StatelessWidget {
final String username;

  Page2 ({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("selamat datang!"),
            Text("Halo $username"),
            ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: (Text('Log Out'))
            )
          ],
        ),
      ),
    );
  }
}