import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({required this.title,super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("News",style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(width: 2,),
        Text(title,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.amber),),
      ],
    );
  }
}
