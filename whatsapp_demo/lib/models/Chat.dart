
import 'package:whatsapp_demo/models/Message.dart';
import 'package:whatsapp_demo/models/User.dart';


class Chat{

  late int id;
  late User sender;
  late List<Message> chats;

  Chat({required this.id,required this.sender,required this.chats});
}






Chat chat1 = Chat(
    id: 1,
    sender: user1,
    chats: [

      Message(id: 6,chatId: 0, messageFrom: user1, message:"Hey bro, how is it going?" , time: "1:00 AM", isChecked: true),
      Message(id: 7,chatId:0 , messageFrom: activeUser, message: "Everything is niceee , what about you ??", time: "1:02 AM", isChecked: true),
      Message(id: 8,chatId: 0, messageFrom: user1, message:"Sameee ! What are you doing?" , time: "1:04 AM", isChecked: true),
      Message(id: 9,chatId: 0, messageFrom: activeUser, message: "At home today and you ?", time: "1:05 AM", isChecked: true),


    ]  );


Chat chat2 = Chat(
    id: 2,
    sender: user2,
    chats: [

      Message(id: 6,chatId: 1, messageFrom: user2, message:"I can be late ! can you text me ASAP ?" , time: "1:00 AM", isChecked: true),
      Message(id: 7,chatId:1 , messageFrom: activeUser, message: "Don't worry, I will let you know", time: "1:02 AM", isChecked: true),
      Message(id: 8,chatId: 1, messageFrom: user2, message:"Thank you so much ! I'll be there " , time: "1:04 AM", isChecked: true),
      Message(id: 9,chatId:1 , messageFrom: activeUser, message: "Oki doki,byee", time: "1:05 AM", isChecked: true),
      Message(id: 10,chatId:1 , messageFrom: user2, message: "byeee", time: "1:05 AM", isChecked: true),


    ]  );


Chat chat3 = Chat(
    id: 3,
    sender: user3,
    chats: [

      Message(id: 6,chatId: 1, messageFrom: user3, message:"I can be late ! can you text me ASAP ?" , time: "1:00 AM", isChecked: true),
      Message(id: 7,chatId:1 , messageFrom: activeUser, message: "Don't worry, I will let you know", time: "1:02 AM", isChecked: true),
      Message(id: 8,chatId: 1, messageFrom: user3, message:"Thank you so much ! I'll be there " , time: "1:04 AM", isChecked: true),
      Message(id: 9,chatId:1 , messageFrom: activeUser, message: "Oki doki,byee", time: "1:05 AM", isChecked: true),


    ]  );


Chat chat4 = Chat(
    id: 4,
    sender: user4,
    chats: [

      Message(id: 1,chatId: 1, messageFrom: user4, message:"I can be late ! can you text me ASAP ?" , time: "1:00 AM", isChecked: true),
      Message(id: 2,chatId:1 , messageFrom: activeUser, message: "Don't worry, I will let you know", time: "1:02 AM", isChecked: true),
      Message(id: 3,chatId: 1, messageFrom: user4, message:"Thank you so much ! I'll be there " , time: "1:04 AM", isChecked: false),



    ]  );


Chat chat5 = Chat(
    id: 5,
    sender: user5,
    chats: [

      Message(id: 1,chatId: 5, messageFrom: user5, message:"I can be late ! can you text me ASAP ?" , time: "1:00 AM", isChecked: true),
      Message(id: 2,chatId:5 , messageFrom: activeUser, message: "Don't worry, I will let you know", time: "1:02 AM", isChecked: true),



    ]  );


List<Chat> chats = [chat1,chat2,chat3,chat4,chat5];


