import 'package:fluencers/AppColor.dart';
import 'package:flutter/material.dart';
class SearchInput extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  const SearchInput({required this.textController, required this.hintText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        controller: textController,
        onChanged: (value) {
          //Do something wi
        },
        decoration: InputDecoration(
          prefixIcon:  Icon(Icons.search, color: AppColor.kSecondary,),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle:  TextStyle(color:AppColor.kMain.withOpacity(0.7)),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.kSecondary, width: 1.2),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.kMain, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}
