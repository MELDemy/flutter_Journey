import 'package:flutter/material.dart';
import 'package:language/screens/classes/items_class.dart';
import 'package:language/screens/classes/view_widget.dart';


class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List <Item> numbers = const [
    Item(sound:'sounds/numbers/number_one_sound.mp3',image: "assets/images/numbers/number_one.png", jpName: "Ichi", enName: "One"),
    Item(sound:'sounds/numbers/number_two_sound.mp3',image: "assets/images/numbers/number_two.png", jpName: "Ni", enName: "Two"),
    Item(sound:'sounds/numbers/number_three_sound.mp3',image: "assets/images/numbers/number_three.png", jpName: "San", enName: "Three"),
    Item(sound:'sounds/numbers/number_four_sound.mp3',image: "assets/images/numbers/number_four.png", jpName: "Shi", enName: "Four"),
    Item(sound:'sounds/numbers/number_five_sound.mp3',image: "assets/images/numbers/number_five.png", jpName: "Go", enName: "Five"),
    Item(sound:'sounds/numbers/number_six_sound.mp3',image: "assets/images/numbers/number_six.png", jpName: "Roku", enName: "Six"),
    Item(sound:'sounds/numbers/number_seven_sound.mp3',image: "assets/images/numbers/number_seven.png", jpName: "Shichi", enName: "Seven"),
    Item(sound:'sounds/numbers/number_eight_sound.mp3',image: "assets/images/numbers/number_eight.png", jpName: "Hachi", enName: "Eight"),
    Item(sound:'sounds/numbers/number_nine_sound.mp3',image: "assets/images/numbers/number_nine.png", jpName: "Kyu", enName: "Nine"),
    Item(sound:'sounds/numbers/number_ten_sound.mp3',image: "assets/images/numbers/number_ten.png", jpName: "ju", enName: "Ten"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Numbers"),foregroundColor: Colors.white,backgroundColor: Color(0xff46322B),),
      body: Container(
        color: Color(0xffFFF6DC),
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context,index){
            return ViewWidget(item: numbers[index],itemColor: 0xffEF9235,imagebackground:0xffFFF6DC,);
          },
        )
      )
    );
  }
}


