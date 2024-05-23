import 'package:fluencers/view/widgets/LatestSponsership.dart';
import 'package:fluencers/view/widgets/banner.dart';
import 'package:fluencers/view/widgets/sponsorshipCard.dart';
import 'package:flutter/material.dart';

import '../../AppColor.dart';
import '../../models/SponsorshipModel.dart';
import '../../models/latestSponsorshipModel.dart';
import '../widgets/trendingBox.dart';

class SponsorshipsPage extends StatefulWidget {
  const SponsorshipsPage({super.key});

  @override
  State<SponsorshipsPage> createState() => _SponsorshipsPageState();
}

class _SponsorshipsPageState extends State<SponsorshipsPage> {
  List<LatestSponsorshipModel> latestSponsorship = [
    LatestSponsorshipModel(
        image:
            "https://themodernnonprofit.com/wp-content/uploads/2022/03/Sponsorship-Blog-Email-Header-1.png",
        name: "Sponsorship",
        time: "2 hours ago",
        amount: "1.5k",
        minFollower: "5k"),
    LatestSponsorshipModel(
        image:
            "https://img.freepik.com/premium-vector/banner-design-earn-money-online-every-week-from-home-template_262129-8150.jpg",
        name: "Wipeduck",
        time: "1 hours ago",
        amount: "1.8k",
        minFollower: "5k"),
    LatestSponsorshipModel(
        image:
            "https://cdn.vectorstock.com/i/1000v/68/66/banner-design-of-earn-money-vector-39296866.jpg",
        name: "Sponsorship2",
        time: "2 hours ago",
        amount: "1.5k",
        minFollower: "5k")
  ];
  List<SponsorshipModel> sponsorships = [
    SponsorshipModel(
      image: "https://themodernnonprofit.com/wp-content/uploads/2022/03/Sponsorship-Blog-Email-Header-1.png",
      name: "Sponsorship",
      time: "2 hours ago",
      date: "May 23, 2024",
      amount: "1000 USD",
      description: "An opportunity to sponsor our event and reach a wide audience.",
      link: "http://example.com/sponsorship",
      category: ["Event", "Marketing"],
      gender: "Unisex",
      follower: 2200.0,
    ),
    SponsorshipModel(
      image: "https://img.freepik.com/premium-vector/banner-design-earn-money-online-every-week-from-home-template_262129-8150.jpg",
      name: "Wipeduck",
      time: "1 hour ago",
      date: "June 1, 2024",
      amount: "1500 USD",
      description: "Wipeduck offers an exciting sponsorship for tech enthusiasts.",
      link: "http://example.com/wipeduck",
      category: ["Technology", "Innovation"],
      gender: "Unisex",
      follower: 3300.0,
    ),
    SponsorshipModel(
      image: "https://cdn.vectorstock.com/i/1000v/68/66/banner-design-of-earn-money-vector-39296866.jpg",
      name: "Sponsorship2",
      time: "2 hours ago",
      date: "July 15, 2024",
      amount: "2000 USD",
      description: "Join our sponsorship program and get exclusive benefits.",
      link: "http://example.com/sponsorship2",
      category: ["Business", "Finance"],
      gender: "Male",
      follower: 4400.0,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kAccent,
      appBar: AppBar(
        backgroundColor: AppColor.kAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sponsorships',
              style: TextStyle(
                color: AppColor.kMain,
                fontWeight: FontWeight.w800,
                fontSize: 25,
                fontFamily: 'Sans',
              ),
            ),
            Icon(
              Icons.more_vert_outlined,
              size: 25,
              color: AppColor.kMain,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Latest Sponsorships",
                style: TextStyle(
                  color: AppColor.kMain,
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 240,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: latestSponsorship.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) =>
                    LatestSponsorship(sponsorship: latestSponsorship[index]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const BannerBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                "Paid Sponsorships",
                style: TextStyle(
                  color: AppColor.kMain,
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: sponsorships.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) =>
                    SponsorshipCard(sponsorship: sponsorships[index]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                "Barter Sponsorships",
                style: TextStyle(
                  color: AppColor.kMain,
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: sponsorships.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) =>
                    SponsorshipCard(sponsorship: sponsorships[index]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                "Most Applied Sponsorships",
                style: TextStyle(
                  color: AppColor.kMain,
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: sponsorships.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) =>
                    SponsorshipCard(sponsorship: sponsorships[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
