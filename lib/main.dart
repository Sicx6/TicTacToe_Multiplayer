import 'package:flutter/material.dart';
import 'package:tic_tac_toe_mp/screen/create_room_screen.dart';
import 'package:tic_tac_toe_mp/screen/join_room_screen.dart';
import 'package:tic_tac_toe_mp/screen/mainMenu_screen.dart';
import 'package:tic_tac_toe_mp/utils/Colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgColor),
      routes: {
        MainMenuScreen.routeName: (context) => const MainMenuScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
      },
      initialRoute: MainMenuScreen.routeName,
      home: const MainMenuScreen(),
    );
  }
}
