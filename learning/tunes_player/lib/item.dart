import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player/item_model.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({ required this.item});

  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          final player = AudioPlayer();
          await player.play(AssetSource(item.sound));
        },
        child:
            Container(color: item.color),
      ),
    );
  }
}
