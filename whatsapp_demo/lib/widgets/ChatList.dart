import 'package:flutter/material.dart';
import 'package:whatsapp_demo/models/Message.dart';
import 'package:whatsapp_demo/models/colors.dart' as color;


class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        itemCount: messages.length,
        itemBuilder: (context, index) {
          final Message message = messages[index];
          return Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15,right: 15,bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      message.messageFrom.imageUrl),radius: 25,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(message.messageFrom.name,style: TextStyle(color: color.wpWhite,fontSize: 17,fontWeight: FontWeight.bold),),
                            Text(message.time,style: TextStyle(color: color.wpGrey,)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:4.0),
                          child: Row(

                            children: [
                              if(message.isChecked == false)...[
                                Stack(
                                  children: [
                                    Icon(Icons.check,color: color.wpGrey,size: 18),
                                    Positioned(child: Icon(Icons.check,color: color.wpGrey,size: 18),bottom: -1,left: 3,)
                                  ],
                                )
                              ]else...[
                                Stack(
                                  children: [
                                    Icon(Icons.check,color: color.wpBlue,size: 18),
                                    Positioned(child: Icon(Icons.check,color: color.wpBlue,size: 18),bottom: -1,left: 3,)
                                  ],
                                )
                              ],
                              Flexible(
                                child: Container(
                                    padding: EdgeInsets.only(left:2),
                                    child: Text(message.message,style: TextStyle(color: color.wpGrey),overflow: TextOverflow.ellipsis,)),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    if(message.isMuted == true)...[
                                      Icon(Icons.volume_off,color: color.wpGrey,)
                                    ]
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
