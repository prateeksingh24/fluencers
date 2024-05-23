import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/simple_icons.dart';

import '../../AppColor.dart';
import '../../models/SponsorshipModel.dart';
import '../../view/Pages/DetailsPage.dart';

class SponsorshipCard extends StatelessWidget {
  final SponsorshipModel sponsorship;
  const SponsorshipCard({super.key, required this.sponsorship});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(sponsorDetails: sponsorship),
          ),
        );
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
                  errorBuilder: (context, error, stackTrace) {
                    return Center(child: Text('Image not available'));
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(5),
                height: 70,
                width: 170,
                decoration: BoxDecoration(
                  color: AppColor.kMain,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sponsorship.name,
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColor.kAccent,
                      ),
                    ),
                    SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
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
                          ),
                        ],
                      ),
                    ),
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
