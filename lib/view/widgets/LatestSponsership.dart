import 'package:fluencers/models/latestSponsorshipModel.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/simple_icons.dart';

import '../../AppColor.dart';
import '../Pages/DetailsPage.dart';

class LatestSponsorship extends StatelessWidget {
  final LatestSponsorshipModel sponsorship;
  const LatestSponsorship({super.key, required this.sponsorship});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage(sponsorDetails: sponsorship,)));

      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        elevation: 5,
        child: Stack(
          children: [
            Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  sponsorship.image,
                  width: 170,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(5),
                height: 90,
                width: 170,
                decoration: BoxDecoration(
                    color: AppColor.kMain,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sponsorship.name,
                      style: TextStyle(fontSize: 17, color: AppColor.kAccent),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Iconify(
                            SimpleIcons.instagram,
                            size: 12,
                            color: AppColor.kAccent,
                          ),
                          Text(
                            sponsorship.time,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColor.kAccent,
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.currency_rupee,size: 15,color: AppColor.kAccent,),
                            Text(sponsorship.amount,style: TextStyle(
                              color: AppColor.kAccent,

                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.group,size: 15,color: AppColor.kAccent,),
                            Text(" Min "+sponsorship.amount,style: TextStyle(
                              color: AppColor.kAccent,

                            ),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
