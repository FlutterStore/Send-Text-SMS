// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Phone_Call(),
    );
  }
}

class Phone_Call extends StatefulWidget {
  const Phone_Call({super.key});

  @override
  State<Phone_Call> createState() => _Phone_CallState();
}

class _Phone_CallState extends State<Phone_Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Send Text SMS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.sms,color: Colors.white,size: 18,)
                ),
                SizedBox(width: 5,),
                Text("9999995566",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 15,),
            Center(
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: ()async {
                  const url = "sms:9999995566";
                  await launch(url);
                }, 
                child: const Text("Send Text SMS",style: TextStyle(color: Colors.white),)
              ),
            )
          ],
        ),
      ),
    );
  }
}