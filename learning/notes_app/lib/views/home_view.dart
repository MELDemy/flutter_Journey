import 'package:flutter/material.dart';
import 'package:notes_app/widgets/card.dart';

class HomeScreen extends StatelessWidget {
  static String id = "HomeScreen";
  HomeScreen({super.key});

  List<Color> colors = [
    Color(0xFFFFCD7A),
    Color(0xFFE7E896),
    Color(0xFF76D6EE),
    Color(0xFFE2A7EA),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Notes",
            style: TextStyle(fontSize: 28),
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Color(0xFF3B3B3B)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return CustomCard(
              cardColor: colors[index],
            );
          },
        ));
  }
}
