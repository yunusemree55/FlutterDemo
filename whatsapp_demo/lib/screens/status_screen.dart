import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_demo/models/Message.dart';
import 'package:whatsapp_demo/models/Status.dart';
import 'package:whatsapp_demo/models/colors.dart' as color;
import 'package:whatsapp_demo/widgets/StatusList.dart';
import 'package:whatsapp_demo/widgets/widgets.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.wpDark,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: color.wpGreen,
        child: Icon(Icons.camera_alt_rounded),
      ),
      body: Column(
        children: [
          Padding(
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
          ),
          SizedBox(
            height: 30,
          ),
          if (newStatusList.length != 0) ...[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Recent updates",
                    style: TextStyle(
                        color: color.wpGrey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: StatusList()
            )
          ]
        ],
      ),
    );
  }
}



