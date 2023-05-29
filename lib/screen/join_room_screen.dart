import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tic_tac_toe_mp/responsive/responsive.dart';
import 'package:tic_tac_toe_mp/widget/customText.dart';
import 'package:tic_tac_toe_mp/widget/custom_button.dart';
import 'package:tic_tac_toe_mp/widget/custom_textField.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = 'join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIDController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
    _gameIDController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Responsive(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                shadows: [
                  Shadow(
                    blurRadius: 40,
                    color: Colors.blue,
                  )
                ],
                text: 'Join a room',
                fontSize: 70,
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                  controller: _nameController, hintText: 'Enter you username'),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  controller: _nameController, hintText: 'Enter Room ID'),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomButton(
                text: 'Join a room',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
