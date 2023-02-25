import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_demo/models/Call.dart';
import 'package:whatsapp_demo/models/colors.dart' as color;

class CallList extends StatefulWidget {
  const CallList({Key? key}) : super(key: key);

  @override
  State<CallList> createState() => _CallListState();
}

class _CallListState extends State<CallList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 75,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: calls.length,
        itemBuilder: (context,index){
          final call = calls[index];

          return ListTile(
              onTap: (){

              },
              leading: CircleAvatar(backgroundImage: NetworkImage(call.callFrom.imageUrl),radius: 25,),

              title: Text(call.callFrom.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),

              subtitle: Row(
                children: [

                  if(call.isAnswered == true)...[

                    RotationTransition(turns: AlwaysStoppedAnimation(-45/360),child: Icon(Icons.arrow_forward,color: color.wpGreen,))

                  ]else...[
                    RotationTransition(turns: AlwaysStoppedAnimation(-45/360),child: Icon( Icons.arrow_back,color: Colors.red,))
                  ],

                  if(call.callCount != 1)...[
                    Text("(${call.callCount}) ",style: TextStyle(color: color.wpGrey,fontSize: 16))
                  ],

                  Text("${DateFormat('EEEE dd').format(call.date)}, ${DateFormat('hh:mm a').format(call.date)}",style: TextStyle(color: color.wpGrey,fontSize: 15),)
                ],
              ),

            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(call.isVoiceCall == true)...[

                  Icon(Icons.call,color: color.wpGreen,)

                ]else...[

                  Icon(Icons.videocam_rounded,color: color.wpGreen,size: 30,)

                ]
              ],
            ),

          );

        });
  }
}
