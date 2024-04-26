import 'package:banner_carousel/banner_carousel.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:fluencers/AppColor.dart';
import 'package:fluencers/models/bannerModel.dart';
import 'package:fluencers/view/widgets/searchBar.dart';
import 'package:fluencers/view/widgets/trendingBox.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<String> sampleImages = [
    "https://images.unsplash.com/photo-1557700836-25f2464e845d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
    "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "https://images.unsplash.com/photo-1542840410-3092f99611a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
  ];
  TextEditingController searchController = TextEditingController();
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
              'Fluencers',
              style: TextStyle(
                color: AppColor.kMain,
                fontWeight: FontWeight.w800,
                fontSize: 25,
                fontFamily: 'Sans',
              ),
            ),
            Icon(
              Icons.notifications_outlined,
              size: 25,
              color: AppColor.kMain,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: SearchInput(
                  textController: searchController,
                  hintText: "Search Influencers....."),
            ),
            const SizedBox(
              height: 10,
            ),
            BannerCarousel(animation: true, banners: BannerImages.listBanners),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Trending",style: TextStyle(
                color: AppColor.kMain,
                fontSize: 19,
                fontWeight: FontWeight.w800,
              ),),
            ),
            // FanCarouselImageSlider(
            //   sliderHeight: 380,
            //   showIndicator: false,
            //   imagesLink: sampleImages,
            //   isAssets: false,
            //
            // ),
            SizedBox(
              height: 10,
            ),
            SizedBox(

              width: MediaQuery.of(context).size.width,
                height: 200,
                child: TrendingBox()),

          ],


        ),
      ),

    );
  }
}
