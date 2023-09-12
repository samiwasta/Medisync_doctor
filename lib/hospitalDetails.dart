import 'package:flutter/material.dart';
import 'package:medisync/global.dart';

class Hospitaldetails extends StatefulWidget {
  const Hospitaldetails({super.key});

  @override
  State<Hospitaldetails> createState() => _HospitaldetailsState();
}

class _HospitaldetailsState extends State<Hospitaldetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar:  AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Logo(size: 24.0),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context, '/dashboard');
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.white,
              height: 400,
              width: 300,
            ),
          )
        ],
      ),
    );
  }
}
