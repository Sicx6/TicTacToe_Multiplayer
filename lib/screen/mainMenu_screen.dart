import 'package:flutter/material.dart';
import 'package:tic_tac_toe_mp/responsive/responsive.dart';
import 'package:tic_tac_toe_mp/screen/create_room_screen.dart';
import 'package:tic_tac_toe_mp/screen/join_room_screen.dart';
import 'package:tic_tac_toe_mp/widget/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Create Game Room',
              onTap: () => createRoom(context),
              fontsize: 17,
              color: Colors.deepPurple,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Join Game Room',
              onTap: () => joinRoom(context),
              fontsize: 17,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
