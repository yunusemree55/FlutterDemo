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
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        itemCount: newStatusList.length,
        itemBuilder: (context, index) {
          final Status status = newStatusList[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: status.isChecked
                              ? color.wpGrey
                              : color.wpGreen,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 8, bottom: 3),
                      child: Text(
                        status.statusFrom.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: color.wpWhite,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "${DateFormat('EEEE').format(status.dateTime)}, ${DateFormat('hh:mm a').format(status.dateTime)}",
                        style: TextStyle(color: color.wpGrey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
