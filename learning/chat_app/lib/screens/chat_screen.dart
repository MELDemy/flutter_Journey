import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static String id = "ChatScreen";

  CollectionReference messagesCollection =
      FirebaseFirestore.instance.collection(kMessagesCollection);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: messagesCollection.snapshots(),
      builder: (context, snapShot) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(kLogo, height: 50),
                Text(
                  "Chat",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: messagesCollection
                      .orderBy(kCreatedTime, descending: true)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Text("Loading");
                    } else if (snapshot.hasError) {
                      return const Text('Something went wrong');
                    } else if (snapshot.hasData) {
                      List<MessageDM> messagesList = [];
                      List<QueryDocumentSnapshot> snapshotDocs =
                          snapshot.data!.docs;
                      for (int i = 0; i < snapshotDocs.length; i++) {
                        messagesList
                            .add(MessageDM.fromJson(snapshot.data!.docs[i]));
                      }
                      return ListView.builder(
                        reverse: true,
                        itemCount: messagesList.length,
                        itemBuilder: (context, index) {
                          return ChatBubble(message: messagesList[index]);
                        },
                      );
                    } else {
                      return Text("Loading");
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13),
                child: TextField(
                  controller: controller,
                  onSubmitted: (message) => sendMessage(),
                  decoration: InputDecoration(
                    hintText: "Message",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    suffixIcon: IconButton(
                      onPressed: () => sendMessage(),
                      icon: Icon(Icons.send),
                    ),
                    contentPadding: EdgeInsets.all(15), // Internal padding
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  void sendMessage() {
    final String message = controller.text.trim();
    if (message.isNotEmpty) {
      messagesCollection.add(
        {'message': message, 'createdTime': DateTime.now(), 'id': kEmail},
      ).then((DocumentReference doc) =>
          print('DocumentSnapshot added with ID: ${doc.id}'));
      controller.clear();
    }
  }
}
