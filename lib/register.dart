import 'package:flutter/material.dart';
import 'package:medisync/global.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  DateTime? _selectedDate;

  _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != _selectedDate)
      setState(() {
        _selectedDate = pickedDate;
        });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(size: 40.0,),
            SizedBox(height: 20.0,),
            Center(
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Container(
                  padding: EdgeInsets.all(40.0),
                  margin: EdgeInsets.only(top: 60.0),
                  height: 600,
                  width: 368,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xff8b8b8b),
                          width: 2.0
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 40.0),
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Name',
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff8b8b8b), width: 2.0),
                              )
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Email ID',
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff8b8b8b), width: 2.0),
                              )
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'Contact Number',
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff8b8b8b), width: 2.0),
                              )
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          children: [
                            DropdownButton(
                              //value: 1,
                              hint: Text("Gender"),
                              onChanged : (selected){},
                                items: [
                                  DropdownMenuItem(value: 1, child: Text("Male")),
                                  DropdownMenuItem(value: 2, child: Text("Female")),
                                ]
                            ),

                           Expanded(
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Text(_selectedDate==null ? "Date of Birth" : _selectedDate!.toLocal().toString().split(' ')[0]),
                                 IconButton(
                                     onPressed: (){_selectDate(context);},
                                     icon: Icon(
                                         Icons.calendar_month,
                                       color: Color(0xff8b8b8b),
                                     )
                                 )
                               ],
                             ),
                           ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          minLines: 2,
                          maxLines: 3,
                          decoration: InputDecoration(
                              hintText: 'Address',
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff8b8b8b), width: 2.0),
                              )
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Qualification',
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff8b8b8b), width: 2.0),
                              )
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Specialization',
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff8b8b8b), width: 2.0),
                              )
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'License Number',
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff8b8b8b), width: 2.0),
                              )
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff8b8b8b), width: 2.0),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText ? Icons.visibility : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                                onPressed: _togglePasswordVisibility,
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "*Verification of doctors can take upto 2 days.",
                            style: TextStyle(
                              color: Color(0xffff6347),
                              fontSize: 14.0
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Center(
                          child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
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
                                  "Register",
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
                ),

                  CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Colors.grey,
                  ),
                ]
              ),
            )
          ],
        )
    );
  }
}
