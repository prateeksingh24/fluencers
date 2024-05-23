class SponsorshipModel {
  final String image;
  final String name;
  final String time;
  final String date;
  final String amount;
  final String description;
  final String link;
  final List<String> category;
  final String gender;
  final double follower;

  SponsorshipModel({
    required this.image,
    required this.name,
    required this.time,
    required this.date,
    required this.amount,
    required this.description,
    required this.link,
    required this.category,
    required this.gender,
    required this.follower,
  });
}
