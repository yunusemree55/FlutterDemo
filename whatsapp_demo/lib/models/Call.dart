import 'package:whatsapp_demo/models/Message.dart';
import 'package:whatsapp_demo/models/User.dart';

class Call{

  late int id;
  late User callFrom;
  late int callCount;
  late DateTime date;
  late bool isAnswered;
  late bool isVoiceCall;

  Call({required this.id,required this.callFrom,required this.callCount,required this.date,required this.isAnswered,required this.isVoiceCall});
}

Call call1 = Call(id: 1, callFrom: user4, callCount: 2, date: DateTime.now(),isAnswered: true,isVoiceCall: true);
Call call2 = Call(id: 2, callFrom: user5, callCount: 1, date: DateTime.now(),isAnswered: false,isVoiceCall: false);
Call call3 = Call(id: 3, callFrom: user2, callCount: 3, date: DateTime.now(),isAnswered: true,isVoiceCall: true);

List<Call> calls = [call1,call2,call3];