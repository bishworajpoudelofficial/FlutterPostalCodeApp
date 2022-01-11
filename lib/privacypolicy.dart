import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('At thulotechnology, accessible from thulotechnology.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by thulotechnology and how we use it.If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us. We may use third party ads to our app. \n\nEmail: info@thulotechnology.com.', textAlign: TextAlign.justify,),
          )
        ],
      ),
    );
  }
}