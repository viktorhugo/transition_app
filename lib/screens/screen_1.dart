import 'package:flutter/material.dart';
import 'package:transition_app/screens/screen_2.dart';


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
      pageBuilder: (context, animation, secondaryAnimation) => const Screen2(),
      // transitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        //* ANIMATION
        final curveAnimation = CurvedAnimation(
          parent: animation, 
          curve: Curves.easeInOut
        );

        //* TRANSITIONS TYPES

        //* SlideTransition
        // return SlideTransition(
        //   position: Tween<Offset>(begin: const Offset(0.5, 1.0), end: Offset.zero).animate(curveAnimation),
        //   child: child,
        // );

        //* ScaleTransition
        // return ScaleTransition(
        //   scale: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
        //   child: child,
        // );

        //* RotationTransition
        // return RotationTransition(
        //   turns: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
        //   child: child,
        // );

        //* FadeTransition
        // return FadeTransition(
        //   opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
        //   child: child,
        // );

        //* TWO OR MORE TRANSITIONS
        return FadeTransition(
          opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
          child: RotationTransition(
            turns: Tween<double>(begin: 0.8, end: 1.0).animate(curveAnimation),
            child: child,
          ),
        );
      },
    );
  }
}