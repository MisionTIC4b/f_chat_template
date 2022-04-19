import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../controllers/authentication_controller.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);
  AuthenticationController authenticationController = Get.find();

  _logout() async {
    try {
      await authenticationController.logout();
    } catch (e) {
      logError(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App ${authenticationController.userEmail()}"),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.sailing_rounded)),
          IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                _logout();
              }),
        ],
      ),
    );
  }
}
