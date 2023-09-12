import 'package:flutter/material.dart';
import 'package:medisync/appointments.dart';
import 'package:medisync/dashboard.dart';
import 'package:medisync/hospitalDetails.dart';
import 'package:medisync/login.dart';
import 'package:medisync/register.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/register' : (context) => const Register(),
        '/dashboard' : (context) => const Dashboard(),
        '/appointments' : (context) => const Appointment(),
        '/hospitalDetails' : (context) => const Hospitaldetails(),
      },
    ),
  );
}
