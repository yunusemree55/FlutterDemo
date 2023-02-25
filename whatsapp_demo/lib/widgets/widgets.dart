




import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_demo/models/Message.dart';
import 'package:whatsapp_demo/models/Status.dart';
import 'package:whatsapp_demo/models/colors.dart' as color;


//General Widgets


Widget HorizontalLine(BuildContext context){
  return Opacity(
    opacity: 0.2,
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 1,
      decoration: BoxDecoration(
          color: color.wpGrey
      ),
    ),
  );
}

Widget PrivacyInfo(String text){


  return Padding(
    padding: const EdgeInsets.only(top: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Opacity(opacity: 0.6,child: Icon(Icons.lock,color: color.wpGrey,size: 15,)),
        SizedBox(width: 8,),
        Opacity(opacity: 0.6,child: Text("${text} ",style: TextStyle(color: color.wpGrey),)),
        Text("end-to-end encrypted",style: TextStyle(color: color.wpGreen),)
      ],
    ),
  );


}



// Status Widgets

Widget ActiveUserStatusLink(){
  return Padding(
    padding: const EdgeInsets.only(top: 15.0, left: 12, right: 12),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60,
          height: 55,
          child: Stack(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(activeUser.imageUrl),
                radius: 25,
              ),
              Positioned(
                child: Container(
                    decoration: BoxDecoration(
                        color: color.wpGreen,
                        shape: BoxShape.circle,
                        border:
                        Border.all(color: color.wpDark, width: 2)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                bottom: 3,
                right: 5,
              )
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 9.0, bottom: 3),
              child: Text(
                "My Status",
                style: TextStyle(
                    color: color.wpWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            Text(
              "Tap to add status update",
              style: TextStyle(
                color: color.wpGrey,
              ),
            ),
          ],
        )
      ],
    ),
  );
}


Future<Object?> statusInfo(BuildContext context,Status status){
  return showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext,
          Animation animation,
          Animation secondaryAnimation) {
        return SingleChildScrollView(
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              width: MediaQuery.of(context).size.width - 10,
              height: MediaQuery.of(context).size.height - 10,
              padding: EdgeInsets.only(
                  left: 10, top: 25),
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons
                                  .arrow_back_outlined,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              shape:
                              BoxShape.circle,
                              border: Border.all(
                                  color:
                                  Colors.white,
                                  width: 2)),
                          child: Image.network(
                            status.statusFrom
                                .imageUrl,
                            height: 55,
                          )),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment
                            .start,
                        children: [
                          SizedBox(height: 10,),
                          DefaultTextStyle(
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                              child: Text(status.statusFrom.name)
                          ),
                          SizedBox(height: 5,),
                          DefaultTextStyle(
                              style: TextStyle(),
                              child: Text("${DateFormat('EEEE').format(status.dateTime)}, ${DateFormat('hh:mm a').format(status.dateTime)}")
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 125,),
                  Image.network(status.statusPhoto),
                  Spacer(flex: 1),

                  Icon(Icons.keyboard_arrow_up_outlined,color: Colors.white,),
                  DefaultTextStyle(
                      style: TextStyle(),
                      child: Text("Reply")
                  ),

                ],


              ),
            ),
          ),
        );
      });
}



// CallScreen Widgets

Widget CallLink(){
  return Padding(
    padding: const EdgeInsets.only(top: 15,left: 8,right: 8),
    child: Row(
      children: [
        CircleAvatar(child: RotationTransition(turns: AlwaysStoppedAnimation(-30/360),child: Icon(Icons.link,color: Colors.white,size: 30,)),radius: 25,backgroundColor: color.wpGreen,),
        SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Create a call link",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
            SizedBox(height: 4,),
            Opacity(opacity:0.7,child: Text("Share a link for your WhatsApp call",style: TextStyle(color: color.wpGrey,fontWeight: FontWeight.bold),))
          ],
        )

      ],
    ),
  );
}


// ChatScreen Widgets


class ChatTextFieldArea extends StatefulWidget {

  late TextEditingController tfController;


  ChatTextFieldArea(this.tfController);

  @override
  State<ChatTextFieldArea> createState() => _ChatTextFieldAreaState();
}

class _ChatTextFieldAreaState extends State<ChatTextFieldArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0,right: 8,bottom: 2),
      child: Container(
        child: Row(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width-80,
              decoration: BoxDecoration(
                color: color.wpNavbar,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(
                children: [

                  IconButton(onPressed: (){}, icon: Icon(Icons.tag_faces_rounded,color: color.wpGrey,)),
                  Expanded(child: TextField(
                    onChanged: (value){
                      setState(() {

                      });
                    },
                    controller: widget.tfController,
                    decoration: InputDecoration.collapsed(
                    hintText: "Message",
                    hintStyle: TextStyle(color: color.wpGrey),
                  ),style: TextStyle(color:Colors.white),)),
                  RotationTransition(turns:AlwaysStoppedAnimation(-45/360) ,child: IconButton(onPressed: (){}, icon: Icon(Icons.attach_file,color: color.wpGrey,))),

                  if(widget.tfController.text.isEmpty)...[
                    IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_rounded,color: color.wpGrey,))
                  ]


                ],
              ),

            ),
            SizedBox(width: 5,),

            FloatingActionButton(onPressed: (){},backgroundColor: color.wpGreen,child: widget.tfController.text.isEmpty ? Icon(Icons.mic): Icon(Icons.send),)


          ],
        ),
      ),
    );
  }
}


