import 'package:flutter/material.dart';
import 'package:whatsapp_demo/models/Chat.dart';
import 'package:whatsapp_demo/models/Message.dart';
import 'package:whatsapp_demo/models/colors.dart' as color;

import '../widgets/widgets.dart';

class ChatScreen extends StatefulWidget {

  late Chat chat;

  ChatScreen(this.chat);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  var tfController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: color.wpGrey,

      appBar: AppBar(

        backgroundColor: color.wpNavbar,
        title: Text(widget.chat.sender.name),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam_rounded)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],


      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(

                  itemCount: widget.chat.chats.length,
                  itemBuilder: (context,index){
                    final Message chat = widget.chat.chats[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: chat.messageFrom == activeUser ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: chat.messageFrom.id == activeUser.id ? color.wpChatGreen : color.wpNavbar,
                            borderRadius: BorderRadius.all(Radius.circular(25))

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(right: 50.0),
                                  child: Text(chat.message,style: TextStyle(color: Colors.white,fontSize: 16),),
                                ),
                                Row(

                                  children: [

                                    Text(chat.time,style: TextStyle(color: color.wpGrey),),

                                    if(chat.messageFrom.id == activeUser.id)...{
                                      Stack(children: [
                                        Icon(Icons.check,color: chat.isChecked ? color.wpBlue : color.wpGrey,),
                                        Positioned(right: -3.3,bottom: -0.9,child: Icon(Icons.check,color: chat.isChecked ? color.wpBlue : color.wpGrey,))
                                      ],)
                                    }

                                  ],
                                )
                              ],
                            )
                          ))
                    ],
                  ),
                );
              }),
            ),

            ChatTextFieldArea(tfController)







          ],
        ),
      ),

    );
  }
}
