import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language/screens/classes/items_class.dart';

class ViewWidget extends StatelessWidget {
  const ViewWidget(
      {required this.item,
      required this.itemColor,
      required this.imagebackground,
      super.key});

  final Item item;
  final int itemColor;
  final int imagebackground;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(itemColor),
      child: Row(
        children: [
          Container(
              color: Color(imagebackground), child: Image.asset(item.image!)),
          Expanded(child: Iteminfo(item: item)),
        ],
      ),
    );
  }
}

class Iteminfo extends StatelessWidget {
  const Iteminfo({required this.item, super.key});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.jpName,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                item.enName,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ]),
      ),
      Spacer(
        flex: 1,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: IconButton(
          icon: Icon(Icons.play_arrow),
          color: Colors.white,
          splashColor: Colors.black,
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource(item.sound));
          },
        ),
      )
    ]);
  }
}
