import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AuthApp - Google - Apple'),
          actions: [
            IconButton(
              onPressed: () {

              }, 
              icon: const Icon(FontAwesomeIcons.doorOpen)
            )
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              MaterialButton(
                minWidth: double.infinity,
                splashColor: Colors.transparent,
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10) ),
                onPressed: () {
                  //TODO: Sig in with Google
                },    
                color: Colors.red,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.google, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('Sign in with Google', style: TextStyle(color: Colors.white),),
                  ],
                )
              )

            ],
          ),
        )
      ),
    );
  }
}
