import 'package:flutter/material.dart';


class Screen1 extends StatelessWidget {
  const Screen1({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1' ,style: TextStyle(color: Colors.white),),
      ),
      body: const Center(
        child: Text('Screen1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, _makeRoute());
        },
        child: const Icon(Icons.access_time_sharp),
      ),
    );
  }
  
  Route _makeRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        
      },
    );
  }
}