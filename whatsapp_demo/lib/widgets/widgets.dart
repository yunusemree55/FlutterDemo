




import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_demo/models/Status.dart';

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





