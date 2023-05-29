import 'package:flutter/material.dart';
import 'package:tic_tac_toe_mp/resources/socket_methods.dart';
import 'package:tic_tac_toe_mp/responsive/responsive.dart';
import 'package:tic_tac_toe_mp/utils/Colors.dart';
import 'package:tic_tac_toe_mp/widget/customText.dart';
import 'package:tic_tac_toe_mp/widget/custom_button.dart';
import 'package:tic_tac_toe_mp/widget/custom_textField.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room';
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final SocketMethod _socketMethod = SocketMethod();
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
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
                text: 'Create room',
                fontSize: 70,
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                controller: _nameController,
                hintText: 'Enter you username',
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomButton(
                color: Colors.deepPurple,
                text: 'Create room',
                onTap: () => _socketMethod.createRoom(_nameController.text),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
