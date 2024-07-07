import 'package:flutter/material.dart';
import 'package:language/screens/family_page/colors_page.dart';
import 'package:language/screens/family_page/family_page.dart';
import 'package:language/screens/home_page/Components.dart';
import 'package:language/screens/numbers_page/number_page.dart';
import 'package:language/screens/phrases_page/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFDE4),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Toku"),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // GestureDetector(
          //   onTap: (){
          //     Navigator.push(
          //       context,MaterialPageRoute(builder:(context){return HomePage();})
          //
          //     );
          //   },
          //   child: Container(
          //     height: 60,
          //     color: Color(0xFF5D893D),
          //     width: double.infinity,
          //     alignment:Alignment.centerLeft,
          //     padding:EdgeInsets.only(left:20),
          //     child: Text("Text",
          //         style: TextStyle(color: Colors.white, fontSize: 18)),
          //   ),
          // ),
          MyComponent(
              text: "Numbers",
              color: 0xFFF69938,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return NumbersPage();
                  }),
                );
              }),
          MyComponent(
            text: "Family members",
            color: 0xFF5D893D,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyPage();
              }));
            },
          ),
          MyComponent(
              text: "Colors",
              color: 0xFF854CAE,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }));
              }),
          MyComponent(
              text: "Phrases",
              color: 0xFF51B0D5,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PhrasesPage();
                }));
              }),
        ],
      ),
    );
  }
}
