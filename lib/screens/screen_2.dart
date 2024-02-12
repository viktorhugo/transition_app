import 'package:flutter/material.dart';


class Screen2 extends StatelessWidget {
  const Screen2({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2' ,style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: Colors.tealAccent,
        child: const Center(
          child: Text('Screen 2 '),
            ),
      ),
  );
  }
}