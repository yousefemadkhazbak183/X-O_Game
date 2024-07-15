import 'package:flutter/material.dart';
import 'package:x_o_game/screens/board_screen.dart';
import 'package:x_o_game/screens/routes_screen.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      onGenerateRoute: (settings){
        switch(settings.name){
          case AppRoute.boardRoute:
            return MaterialPageRoute(
        builder: (context) => BoardScreen()
            );
        }
      },
    );
  }
}
