import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Column(
        children: [
           const Padding(
            padding: EdgeInsets.all(7.0),
            child: Text('Postal code is build to provide postal code of Nepal in easy way. Here you can find list of postal codes in Nepal by districts and various place.\n Contact: info@thulotechnology.com', ),
          )
        ],
      ),
    );
  }
}