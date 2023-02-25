import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:whatsapp_demo/models/Chat.dart';
import 'package:whatsapp_demo/models/Message.dart';
import 'package:whatsapp_demo/models/colors.dart' as color;
import 'package:whatsapp_demo/screens/chat_screen.dart';


class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 75,
      shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),

        itemCount: chats.length,
        itemBuilder: (context, index) {
          //final Message message = messages[index];

          return ListTile(
            onTap: (){


              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ChatScreen(chats[index])));

            },


            leading: CircleAvatar(backgroundImage: NetworkImage(chats[index].sender.imageUrl),radius: 25,),
            title: Text(chats[index].sender.name,style: TextStyle(color: color.wpWhite,fontSize: 17,fontWeight: FontWeight.bold),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top:3.0),
              child: Row(
                children: [

                    if(chats[index].chats[chats[index].chats.length-1].messageFrom.id == activeUser.id)...[
                      if(chats[index].chats[chats[index].chats.length-1].isChecked == false)...[
                        Stack(
                          children: [
                            Icon(Icons.check,color: color.wpGrey,size: 18),
                            Positioned(child: Icon(Icons.check,color: color.wpGrey,size: 18),bottom: -1,left: 3,)
                          ],
                        )

                      ]else if(chats[index].chats[chats[index].chats.length-1].isChecked == true)...[
                        Stack(
                          children: [
                            Icon(Icons.check,color: color.wpBlue,size: 18),
                            Positioned(child: Icon(Icons.check,color: color.wpBlue,size: 18),bottom: -1,left: 3,)
                          ],
                        ),

                      ]

                      else...[

                        ],
                    ],







                  Flexible(
                    child: Container(
                        padding: EdgeInsets.only(left:2),
                        child: Text(chats[index].chats[chats[index].chats.length-1].message,style: TextStyle(color: color.wpGrey),overflow: TextOverflow.ellipsis,)),
                  )
                ],
              ),
            ),
            trailing: Column(

              children: [
                SizedBox(height: 7,),
                Text(chats[index].chats[chats[index].chats.length-1].time,style: TextStyle(color: color.wpGrey,)),
                SizedBox(height: 5,),
                if(chats[index].sender.isMuted == true)...[
                  Icon(Icons.volume_off,color: color.wpGrey,)
                ]

              ],
            ),




          );
        });
  }
}
