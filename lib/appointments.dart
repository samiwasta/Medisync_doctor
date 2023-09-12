import 'package:flutter/material.dart';
import 'package:medisync/global.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Text(
              "Appointments",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Divider(
              thickness: 1.0
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Text(
              "Ongoing Appointment",
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
          SizedBox(height: 20.0),
              Center(
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: 80,
                    width: 380,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xff8b8b8b)
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Jhon Doe",
                              style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff333333)
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xff008000),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15.0)
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                                      child: Text(
                                        "Done",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Text(
                    "Upcoming Appointments",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Container(
                  //color: Colors.black,
                  height: 550,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 20.0),
                        Center(
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              height: 80,
                              width: 380,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff8b8b8b)
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: Colors.grey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Max Zuckerburg",
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff333333)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Center(
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              height: 80,
                              width: 380,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff8b8b8b)
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: Colors.grey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Alan Turing",
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff333333)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Center(
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              height: 80,
                              width: 380,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff8b8b8b)
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: Colors.grey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Alex Rutherford",
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff333333)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Center(
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              height: 80,
                              width: 380,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff8b8b8b)
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: Colors.grey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Josh Buttler",
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff333333)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Center(
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              height: 80,
                              width: 380,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff8b8b8b)
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: Colors.grey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Mitchel Jhonson",
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff333333)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Center(
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              height: 80,
                              width: 380,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff8b8b8b)
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: Colors.grey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "David Warner",
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff333333)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Center(
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              height: 80,
                              width: 380,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff8b8b8b)
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: Colors.grey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Tim Anderson",
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff333333)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Center(
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              height: 80,
                              width: 380,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff8b8b8b)
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: Colors.grey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Peter Peterson",
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff333333)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
