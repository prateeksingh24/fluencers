import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/simple_icons.dart';

import '../../AppColor.dart';

class InfluencerAnalyticsBox extends StatelessWidget {
  final String name;
  final String icon;
  const InfluencerAnalyticsBox({super.key, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(11),
      width: 150,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColor.kMain),
      child: Row(
        children: [
          Iconify(
              icon,
            size: 25,
            color: AppColor.kAccent,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(name,style: TextStyle(color: AppColor.kAccent,fontSize: 17,fontWeight: FontWeight.w700),),
        ],
      ),
    );
  }
}
