
import 'package:fluencers/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart'; // For Iconify Widget
import 'package:iconify_flutter/icons/simple_icons.dart';
import 'package:iconify_flutter/icons/zondicons.dart'; // for Non Colorful Icons
import 'package:colorful_iconify_flutter/icons/emojione.dart'; // for Colorful Icons
// as widgets

import 'package:social_media_buttons/social_media_button.dart';
import 'package:social_media_buttons/social_media_icons.dart';

class TrendingBox extends StatefulWidget {
  const TrendingBox({super.key});

  @override
  State<TrendingBox> createState() => _TrendingBoxState();
}

class _TrendingBoxState extends State<TrendingBox> {
  static const List<String> sampleImages = [
    "https://images.unsplash.com/photo-1557700836-25f2464e845d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
    "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "https://images.unsplash.com/photo-1542840410-3092f99611a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "https://images.unsplash.com/photo-1557700836-25f2464e845d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
    "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "https://images.unsplash.com/photo-1542840410-3092f99611a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: sampleImages.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          elevation: 5,
          child: Stack(
            children: [
              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    sampleImages[index],
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: AppColor.kSecondary,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  child: Center(
                    child: Text(
                      '99',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: AppColor.kAccent),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child:Container(
                  padding: EdgeInsets.all(5),
                  height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: AppColor.kMain,
                  borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),bottomLeft: Radius.circular(10) )
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("@Rufia",style: TextStyle(
                          fontSize: 13,
                            color: AppColor.kAccent
                        ),),
                        Iconify(SimpleIcons.instagram,size: 17,color: AppColor.kAccent,),

                      ],
                    ),
                    Text("Lucknow",style: TextStyle(
                        color: AppColor.kAccent
                    ),),

                  ],
                ) ,
              ) ,)
            ],
          ),
        );
      },
    );
  }
}
