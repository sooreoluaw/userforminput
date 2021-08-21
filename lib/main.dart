import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(home: Form()));
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  bool _secureText = true;
  // TextEditingController _nameController = TextEditingController();
  String value = "";
  String value1 = "";
  String value2 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Input'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                  'C:\Users\okeyo\Documents\PROGRAMS\FLUTTER\formapp\assets\brand-logo.png'),
            ),
            Expanded(
              child: Image.asset(
                  'C:\Users\okeyo\Documents\PROGRAMS\FLUTTER\formapp\assets\I4G-Logo-Color-Cropped.png'),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      style: TextStyle(color: Colors.black),
                      text: "to visit website"),
                  TextSpan(
                    style: TextStyle(color: Colors.blue),
                    text: "Click here",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        var url = "https://internship.zuri.team/";
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw "Cannot load site";
                        }
                      },
                  ),
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Your Firstname',
                labelText: 'Firstname',
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
              ),
              onSubmitted: (String text) {
                setState(() {
                  value = text;
                });
              },
              keyboardType: TextInputType.name,
              obscureText: false,
              // maxLength: 10,
              // maxLines: 3,
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Your Lastname',
                labelText: 'Lastname',
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
              ),
              keyboardType: TextInputType.name,
              obscureText: false,
              // maxLength: 10,
              // maxLines: 3,
              onSubmitted: (String text) {
                setState(() {
                  value1 = text;
                });
              },
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Your Stack',
                labelText: 'Stack',
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
              ),
              keyboardType: TextInputType.name,
              obscureText: false,
              // maxLength: 10,
              // maxLines: 3,
              onSubmitted: (String text) {
                setState(() {
                  value2 = text;
                });
              },
            ),
            SizedBox(height: 10.0),
            // TextField(
            //   decoration: InputDecoration(
            //     hintText: 'Your Password',
            //     labelText: 'Password',
            //     labelStyle: TextStyle(
            //       fontSize: 16,
            //       color: Colors.black,
            //     ),
            //     border: OutlineInputBorder(),
            //     suffixIcon: IconButton(
            //       icon: Icon(Icons.remove_red_eye),
            //       onPressed: () {
            //         setState(() {
            //           _secureText = !_secureText;
            //         });
            //       },
            //     ),
            //   ),
            //   obscureText: _secureText,
            // ),
            Text("\n\n Firstname: $value"
                "\n\n Lastname: $value1"
                "\n\n Stack: $value2")
          ],
        ),
      ),
    );
  }
}
