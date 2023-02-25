import 'package:whatsapp_demo/models/User.dart';

class Message{

  late int id;
  late int chatId;
  late User messageFrom;
  late String message;
  late String time;
  late bool isChecked;


  Message({required this.id,required this.chatId,required this.messageFrom,required this.message,required this.time,required this.isChecked});
}


User user1 = User(id: 1, name: "Yunus Emre", imageUrl: "https://cdn-icons-png.flaticon.com/512/2046/2046862.png",isMuted:false );
User user2 = User(id: 2, name: "Mert Ali", imageUrl: "https://www.pngarts.com/files/6/User-Avatar-in-Suit-PNG.png",isMuted:true );
User user3 = User(id: 3, name: "Nedim", imageUrl: "http://mysalonsoftware.co.za/wp-content/uploads/2019/08/avatar-user-boy-man-32442f8a928dac67-512x512.png",isMuted: false);
User user4 = User(id: 4, name: "Gürkan", imageUrl: "https://www.clipartmax.com/png/full/79-799726_security-agent-icon-portrait-of-a-man.png",isMuted:true );
User user5 = User(id: 5, name: "Atilla", imageUrl: "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png",isMuted: false);


User activeUser = User(id: 0, name: "Active User", imageUrl: "https://www.shareicon.net/data/512x512/2016/09/15/829466_man_512x512.png",isMuted: false);