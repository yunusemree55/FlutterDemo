import 'package:flutter/material.dart';
import 'package:whatsapp_demo/models/colors.dart' as color;
import 'package:whatsapp_demo/widgets/CallList.dart';
import 'package:whatsapp_demo/widgets/widgets.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add_ic_call_rounded),
        backgroundColor: color.wpGreen,
      ),
      backgroundColor: color.wpDark,


      body: SingleChildScrollView(
        child: Column(
          children: [

            CallLink(),
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.only(top:15 ,left: 8.0,right: 8, bottom: 12),
              child: Row(
                children: [
                  Opacity(opacity: 0.7,child: Text("Recent",style: TextStyle(color: color.wpGrey,fontWeight: FontWeight.bold,fontSize: 15),))
                ],
              ),
            ),

            CallList(),

            SizedBox(height: 25,),
            HorizontalLine(context),

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(opacity: 0.6,child: Icon(Icons.lock,color: color.wpGrey,size: 15,)),
                  SizedBox(width: 8,),
                  Opacity(opacity: 0.6,child: Text("Your personal calls are ",style: TextStyle(color: color.wpGrey),)),
                  Text("end-to-end encrypted",style: TextStyle(color: color.wpGreen),)
                ],
              ),
            ),
            SizedBox(height: 10,)




          ],
        ),
      ),

    );
  }
}
