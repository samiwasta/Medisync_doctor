import 'package:flutter/material.dart';


//Brand Logo
class Logo extends StatelessWidget {
  const Logo({super.key, this.size=16.0});
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Med",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: size,
              color: Colors.black
            ),
          ),
          Text(
            "i",
            style: TextStyle(
              color: Color(0xffff6347),
              fontWeight: FontWeight.w500,
              fontSize: size
            ),
          ),
          Text(
            "Sync",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: size,
              color: Colors.black
            ),
          ),
          Text(
            "Doctor",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: size * 0.625,
              color: Colors.black
            ),
          )
        ],
      ),
    );
  }
}


// Search Bar
class SearchBox extends StatelessWidget {
  SearchBox({super.key, required this.onchangedfunction, this.hintTextString="Search"});

  Function onchangedfunction;
  String hintTextString;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text){onchangedfunction(text);},
      decoration: InputDecoration(
        hintText: hintTextString,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        suffixIcon: Icon(Icons.search),
      ),
    );
  }
}