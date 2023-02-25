import 'package:flutter/material.dart';


import 'package:whatsapp_demo/models/colors.dart' as color;
import 'package:whatsapp_demo/screens/call_screen.dart';
import 'package:whatsapp_demo/screens/chatbox_screen.dart';
import 'package:whatsapp_demo/screens/status_screen.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({Key? key}) : super(key: key);

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: color.wpNavbar,
          foregroundColor: color.wpGrey,
          actions: [
            IconButton(onPressed:(){},icon:Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed:(){},icon:Icon(Icons.search_outlined)),
            IconButton(onPressed:(){},icon:Icon(Icons.more_vert)),
          ],

          bottom: TabBar(
            indicatorColor: color.wpGreen,
            labelColor: color.wpGreen,
            unselectedLabelColor: color.wpGrey,
            labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
            tabs: [
              Tab(child: Text("Chats"),),
              Tab(child: Text("Status"),),
              Tab(child: Text("Calls"),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallsScreen()

          ],
        ),
      ),
    );

  }
}
