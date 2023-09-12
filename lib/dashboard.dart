import 'package:flutter/material.dart';
import 'package:medisync/global.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar:  AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Logo(size: 24.0),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60.0,
                          backgroundColor: Color(0xff8b8b8b),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 1.0),
                              child: Text(
                                "DRID:",
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff333333)
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15.0),
                              child: Text(
                                "123456",
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffff6347)
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Dr. James Brown",
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                              color: Color(0xff333333)
                          ),
                        ),
                        Divider(
                          thickness: 1.0
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  "Practicing Hospital(s)",
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: IconButton(
                                  onPressed: (){
                                    showDialog(context: context, builder: (BuildContext context){
                                      return Dialog(
                                        child: Container(
                                          height: 400,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Text(
                                                  "Join the hospital.",
                                                  style: TextStyle(
                                                    fontSize: 24.0,
                                                    color: Color(0xff8b8b8b),
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                thickness: 1.0,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(30.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      hintText: 'Enter Hospital ID',
                                                      border: UnderlineInputBorder(),
                                                      focusedBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Color(0xff8b8b8b), width: 2.0),
                                                      )
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(30.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      hintText: 'Enter Department ID',
                                                      border: UnderlineInputBorder(),
                                                      focusedBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Color(0xff8b8b8b), width: 2.0),
                                                      )
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 40.0),
                                              Center(
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.popAndPushNamed(context, '/dashboard');
                                                    },
                                                    style: TextButton.styleFrom(
                                                      backgroundColor: Color(0xff0073e6),
                                                      foregroundColor: Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(15.0)
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                                      child: Text(
                                                        "Send Request",
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    )
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                                  },
                                icon: Icon(Icons.add),
                                iconSize: 48.0,
                                color: Color(0xff0073e6),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 20.0),
                            Center(
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/hospitalDetails');
                                },
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
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Greenwood General Hospital",
                                          style: TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff333333)
                                          ),
                                        ),
                                        Text(
                                          "123, Main Street, Greenwood, CA 12345",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff333333)
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
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sunshine Hospital and Clinic",
                                          style: TextStyle(
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff333333)
                                          ),
                                        ),
                                        Text(
                                          "456, Oak Road, Sunshine City, FL 54321",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff333333)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/appointments');
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor: Color(0xff0073e6),
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15.0)
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                                          child: Text(
                                            "Appointments",
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.white
                                            ),
                                          ),
                                        )
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          backgroundColor: Color(0xffff6347),
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15.0)
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                                          child: Text(
                                            "Mark Busy",
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.white
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
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
          )
        ],
      )
    );
  }
}

