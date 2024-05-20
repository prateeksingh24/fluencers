import 'package:flutter/material.dart';


class BannerBox extends StatefulWidget {
  const BannerBox({super.key});

  @override
  State<BannerBox> createState() => _BannerBoxState();
}

class _BannerBoxState extends State<BannerBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
          child: Image.network('https://t4.ftcdn.net/jpg/01/18/44/93/360_F_118449320_KVFNE3cnTIPfKvX1XKVBdJCqTxJ14taF.jpg',fit: BoxFit.cover,)),
    );
  }
}
