import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({required this.cardColor, super.key});
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: cardColor,
        ),
        padding: EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 25),
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Flutter tips",
                  style: TextStyle(fontSize: 35),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Build your Career with \nTharwat Samy",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  padding: EdgeInsets.only(top: 30),
                  alignment: Alignment.centerRight,
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Text("1/1/2020"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
