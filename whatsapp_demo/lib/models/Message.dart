import 'package:whatsapp_demo/models/User.dart';

class Message{

  late int id;
  late User messageFrom;
  late String message;
  late String time;
  late bool isChecked;
  late bool isMuted;

  Message({required this.id,required this.messageFrom,required this.message,required this.time,required this.isChecked,required this.isMuted});
}


User user1 = User(id: 1, name: "Yunus Emre", imageUrl: "https://cdn-icons-png.flaticon.com/512/2046/2046862.png");
User user2 = User(id: 2, name: "Mert Ali", imageUrl: "https://www.pngarts.com/files/6/User-Avatar-in-Suit-PNG.png");
User user3 = User(id: 3, name: "Nedim", imageUrl: "http://mysalonsoftware.co.za/wp-content/uploads/2019/08/avatar-user-boy-man-32442f8a928dac67-512x512.png");
User user4 = User(id: 4, name: "Gürkan", imageUrl: "https://www.clipartmax.com/png/full/79-799726_security-agent-icon-portrait-of-a-man.png");
User user5 = User(id: 5, name: "Atilla", imageUrl: "https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png");


Message message1 = Message(id: 1, messageFrom: user1,message: "Hello,when will we meet today ?" , time: "1:15 AM", isChecked: true, isMuted: false);
Message message2 = Message(id: 2, messageFrom: user2,message: "I'll check your status when I have time" , time: "5:40 PM", isChecked: false, isMuted: true);
Message message3 = Message(id: 3, messageFrom: user3,message: "Okay, see you later !" , time: "7:37 AM", isChecked: false, isMuted: false);
Message message4 = Message(id: 4, messageFrom: user4,message: "What did you say ? I can't check your voice message" , time: "5:10 AM", isChecked: true, isMuted: true);
Message message5 = Message(id: 5, messageFrom: user5,message: "Yesss, I hope we can handle it together :D " , time: "2:50 PM", isChecked: false, isMuted: false);

List<Message> messages = [message1,message2,message3,message4,message5];