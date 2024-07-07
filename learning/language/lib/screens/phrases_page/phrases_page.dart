import 'package:flutter/material.dart';
import 'package:language/screens/classes/items_class.dart';
import 'package:language/screens/classes/view_widget.dart';
import 'package:language/screens/phrases_page/phrase_widget.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List <Item> members =const[
    Item(sound:'sounds/phrases/are_you_coming.wav',jpName: "Chichioya",enName: "Are you coming?" ),
    Item(sound:'sounds/phrases/dont_forget_to_subscribe.wav',jpName: "Hahaoya",enName: "dont_forget_to_subscribe" ),
    Item(sound:'sounds/test/note1.mp3',jpName: "Ane",enName: "Older Sister" ),
    Item(sound:'sounds/family_members/older bother.wav',jpName: "Nisan",enName: "Older Brother" ),
    Item(sound:'sounds/family_members/younger brother.wav',jpName: "Yousef",enName: "Younger Brother" ),
    Item(sound:'sounds/family_members/younger sister.wav',jpName: "Menna",enName: "Younger Sister" ),
    Item(sound:'sounds/family_members/son.wav',jpName: "Musuko",enName: "Son" ),
    Item(sound:'sounds/family_members/daughter.wav',jpName: "Retal",enName: "Daughter" ),
    Item(sound:'sounds/family_members/grand father.wav',jpName: "Olisap",enName: "Grandfather" ),
    Item(sound:'sounds/family_members/grand mother.wav',jpName: "sobo",enName: "Grandmother" ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Phrases"),backgroundColor: Color(0xff46322B),foregroundColor: Colors.white,),
        body:
        ListView.builder(
          itemCount: members.length,
          itemBuilder:(context,index){
            return PhraseWidget(item: members[index], itemColor: 0xFF51B0D5);
          }, )

    );
  }
}
