import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_demo/models/Status.dart';
import 'package:whatsapp_demo/models/colors.dart' as color;
import 'package:whatsapp_demo/widgets/widgets.dart';

class StatusList extends StatefulWidget {
  const StatusList({Key? key}) : super(key: key);

  @override
  State<StatusList> createState() => _StatusListState();
}

class _StatusListState extends State<StatusList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 75,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        itemCount: newStatusList.length,
        itemBuilder: (context, index) {
          final Status status = newStatusList[index];

          return ListTile(
            onTap: (){
              setState(() {
                status.isChecked = true;
              });
              statusInfo(context, status);
            },

            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: status.isChecked ? color.wpGrey : color.wpGreen,
                          width: 2.2)),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        status.isChecked = true;
                      });

                      statusInfo(context, status);

                    },
                    child: CircleAvatar(
                      backgroundImage:
                      NetworkImage(status.statusPhoto),
                      radius: 25,
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              status.statusFrom.name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: color.wpWhite,
                  fontSize: 16),
            ),
            subtitle: Text(
              "${DateFormat('EEEE').format(status.dateTime)}, ${DateFormat('hh:mm a').format(status.dateTime)}",
              style: TextStyle(color: color.wpGrey),
            ),



          );
        });
  }
}
