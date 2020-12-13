import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

class AlertGameOver extends StatelessWidget {
  static bool newGame = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      title: Text('Game Over'),
      content:
      Text('Are you sure you want to exit the game ?'),
      actions: [
        FlatButton(
          textColor: MyApp.primaryColor,
          onPressed: () {
            Navigator.pop(context);
            newGame = true;
          },
          child: Text('New Game'),
        ),
        FlatButton(
          textColor: MyApp.primaryColor,
          onPressed: () {
            newGame = false;
            Navigator.pop(context);
          },
          child: Text('Ok'),
        ),
      ],
    );
  }
}

class AlertExit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      title: Text('Exit Game'),
      content:
      Text('Are you sure you want to exit the game ?'),
      actions: [
        FlatButton(
          textColor: MyApp.primaryColor,
          onPressed: () {
            SystemNavigator.pop();
          },
          child: Text('Yes'),
        ),
        FlatButton(
          textColor: MyApp.primaryColor,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('No'),
        ),
      ],
    );
  }

}
