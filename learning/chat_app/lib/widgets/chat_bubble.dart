import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({required this.message, super.key});
  final MessageDM message;
  @override
  Widget build(BuildContext context) {
    if (message.id == kEmail) {
      return MyChatBubble(message: message);
    } else {
      return OtherChatBubble(message: message);
    }
  }
}

class MyChatBubble extends StatelessWidget {
  const MyChatBubble({
    required this.message,
    super.key,
  });

  final MessageDM message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
            color: kPrimaryColor,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text(
            message.message,
            style: TextStyle(
              color: Colors.white,
            ),
          )),
    );
  }
}

class OtherChatBubble extends StatelessWidget {
  const OtherChatBubble({
    required this.message,
    super.key,
  });

  final MessageDM message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
            color: Colors.red,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text(
            message.message,
            style: TextStyle(
              color: Colors.white,
            ),
          )),
    );
  }
}
