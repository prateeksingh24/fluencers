import 'package:flutter/material.dart';

import '../../AppColor.dart';
import '../../models/SponsorshipModel.dart';
import '../../models/detailsModel.dart';

class DetailsPage extends StatefulWidget {
  final SponsorshipModel sponsorDetails;
  const DetailsPage({super.key, required this.sponsorDetails});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kAccent,
        centerTitle: true,
        title: Text(
          'Details',
          style: TextStyle(
            color: AppColor.kMain,
            fontWeight: FontWeight.w800,
            fontSize: 25,
            fontFamily: 'Sans',
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            child: Image.network(
              widget.sponsorDetails.image,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Center(child: Text('Image not available'));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.sponsorDetails.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColor.kSecondary,
                  ),
                ),
                Text("Posted: ${widget.sponsorDetails.date}"),
                Text("Amount: ${widget.sponsorDetails.amount}"),
                Text("Description: ${widget.sponsorDetails.description}"),
                Text("Link: ${widget.sponsorDetails.link}"),
                Text("Category: ${widget.sponsorDetails.category.join(', ')}"),
                Text("Gender: ${widget.sponsorDetails.gender}"),
                Text("Followers: ${widget.sponsorDetails.follower.toString()}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
