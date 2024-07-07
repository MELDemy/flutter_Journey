import 'package:flutter/material.dart';
import 'package:language/screens/classes/items_class.dart';
import 'package:language/screens/classes/view_widget.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List <Item> members =const[
    Item(sound:'sounds/family_members/father.wav',image: "assets/images/family_members/family_father.png",jpName: "Chichioya",enName: "Father" ),
    Item(sound:'sounds/family_members/mother.wav',image: "assets/images/family_members/family_mother.png",jpName: "Hahaoya",enName: "Mother" ),
    Item(sound:'sounds/family_members/older sister.wav',image: "assets/images/family_members/family_older_sister.png",jpName: "Ane",enName: "Older Sister" ),
    Item(sound:'sounds/family_members/older bother.wav',image: "assets/images/family_members/family_older_brother.png",jpName: "Nisan",enName: "Older Brother" ),
    Item(sound:'sounds/family_members/younger brother.wav',image: "assets/images/family_members/family_younger_brother.png",jpName: "Yousef",enName: "Younger Brother" ),
    Item(sound:'sounds/family_members/younger sister.wav',image: "assets/images/family_members/family_younger_sister.png",jpName: "Menna",enName: "Younger Sister" ),
    Item(sound:'sounds/family_members/son.wav',image: "assets/images/family_members/family_son.png",jpName: "Musuko",enName: "Son" ),
    Item(sound:'sounds/family_members/daughter.wav',image: "assets/images/family_members/family_daughter.png",jpName: "Retal",enName: "Daughter" ),
    Item(sound:'sounds/family_members/grand father.wav',image: "assets/images/family_members/family_grandfather.png",jpName: "Olisap",enName: "Grandfather" ),
    Item(sound:'sounds/family_members/grand mother.wav',image: "assets/images/family_members/family_grandmother.png",jpName: "sobo",enName: "Grandmother" ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Family Members"),backgroundColor: Color(0xff46322B),foregroundColor: Colors.white,),
        body:
        ListView.builder(
          itemCount: members.length,
          itemBuilder:(context,index){
            return ViewWidget(item: members[index], itemColor: 0xFF854CAE, imagebackground: 0xFFFCF5DC);
          }, )

    );
  }
}
