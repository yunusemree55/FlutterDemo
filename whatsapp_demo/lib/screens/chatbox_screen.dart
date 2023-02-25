import 'package:flutter/material.dart';
import 'package:whatsapp_demo/models/colors.dart' as color;
import 'package:whatsapp_demo/widgets/ChatList.dart';
import 'package:whatsapp_demo/widgets/widgets.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.chat),
        backgroundColor: color.wpGreen,
      ),

        backgroundColor: color.wpDark,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ChatList(),


              HorizontalLine(context),

              PrivacyInfo("Your personal messages are"),

              SizedBox(height: 10,)
            ],
          ),
        ));
  }
}
