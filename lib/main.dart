import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
 runApp(const NepaliPostalCode());
}

class NepaliPostalCode extends StatelessWidget {
  const NepaliPostalCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Postal Code App",
      home: HomePage(),
    );
  }
}
