import 'package:chat_app/constants.dart';

class MessageDM {
  String message;
  String id;
  // String collection = kMessagesCollection;
  // String document;
  // String field = 'message';

  MessageDM({required this.message, required this.id});

  factory MessageDM.fromJson(jsonData) {
    return MessageDM(message: jsonData[kMessageField], id: jsonData[kIdField]);
  }
}
