import 'package:whatsapp_demo/models/Message.dart';
import 'package:whatsapp_demo/models/User.dart';

class Status{

  late int id;
  late User statusFrom;
  late String statusPhoto;
  late DateTime dateTime;
  late bool isChecked;

  Status({required this.id,required this.statusFrom,required this.statusPhoto,required this.dateTime,required this.isChecked});
}


Status status1 = Status(id: 1, statusFrom: user1, statusPhoto: "https://thumbs.dreamstime.com/b/aerial-view-lago-antorno-dolomites-lake-mountain-landscape-alps-peak-misurina-cortina-di-ampezzo-italy-reflected-103752677.jpg", dateTime: DateTime.now(),isChecked: false);
Status status2 = Status(id: 2, statusFrom: user3,statusPhoto: "https://thumbs.dreamstime.com/b/basketball-court-arena-backgrounds-background-168018927.jpg", dateTime: DateTime.now(),isChecked: false);

List<Status> newStatusList = [status1,status2];
