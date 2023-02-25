import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ActiveUserStatusLink(),
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

              StatusList(),

            ],


            HorizontalLine(context),

            PrivacyInfo("Your Status updates are"),

            SizedBox(height: 10,)



          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: color.wpGreen,
        child: Icon(Icons.camera_alt_rounded),
      ),

    );
  }
}



