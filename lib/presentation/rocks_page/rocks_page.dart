import 'package:flutter/material.dart';

class RocksPage extends StatelessWidget {
  const RocksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
          child: const Text('Rocks was not implemented'),
          // TODO: implement rocks page
        ),
      ),
    );
  }
}
