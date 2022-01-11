import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:postal_code_app/privacypolicy.dart';

import 'about.dart';
import 'data.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Postal Code App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Homepage"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("About Us"),
              leading: const Icon(Icons.info),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
            ),
            ListTile(
              title: const Text("Privacy Policy"),
              leading: const Icon(Icons.policy),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrivacyPolicy()),
                );
              },
            ),
            ListTile(
              title: const Text("Exit"),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10, left: 2, right: 2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Table(
                columnWidths: const {
                  0: FractionColumnWidth(0.4),
                  1: FractionColumnWidth(0.3),
                  2: FractionColumnWidth(0.3),
                },
                border: TableBorder.symmetric(
                    inside: const BorderSide(width: 1, color: Colors.blue),
                    outside: const BorderSide(width: 1)),
                defaultColumnWidth: const FixedColumnWidth(150),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                
                  const TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'District',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Post Office',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Postal Code',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ]),
                  
                  ...postalData
                      .map((e) => (TableRow(children: [
                            GestureDetector(
                              onTap: () {
                                Clipboard.setData(
                                    ClipboardData(text: e.postalCode));

                                Fluttertoast.showToast(
                                    msg:
                                        " ${e.postOffice} Postal code: ${e.postalCode} is copied",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.green,
                                    textColor: Colors.white,
                                    fontSize: 18.0);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  e.district,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Clipboard.setData(
                                    ClipboardData(text: e.postalCode));

                                Fluttertoast.showToast(
                                    msg:
                                        " ${e.postOffice} Postal code: ${e.postalCode} is copied",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.green,
                                    textColor: Colors.white,
                                    fontSize: 18.0);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  e.postOffice,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Clipboard.setData(
                                    ClipboardData(text: e.postalCode));

                                Fluttertoast.showToast(
                                    msg:
                                        " ${e.postOffice} Postal code: ${e.postalCode} is copied",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.green,
                                    textColor: Colors.white,
                                    fontSize: 18.0);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  e.postalCode,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ])))
                      .toList()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
