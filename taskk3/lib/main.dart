import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.orange, Colors.purple])),
      child: ListView(children: [
        const Image(
          image: AssetImage('images/be.png'),
          width: 230,
          height: 230,
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 70.0),
          child: ToggleSwitch(
            customWidths: [135, 135],
            minHeight: 40,
            cornerRadius: 20.0,
            activeBgColor: [Colors.white],
            activeFgColor: Colors.black,
            inactiveFgColor: Colors.white,
            initialLabelIndex: 0,
            totalSwitches: 2,
            labels: ['Existing', 'New'],
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              margin: EdgeInsets.symmetric(horizontal: 70.0),
              color: Colors.white,
              height: 150,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      hintText: 'Email Address',
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    indent: 10,
                    endIndent: 10,
                  ),
                  TextField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                width: 180,
                height: 40,
                margin: EdgeInsets.fromLTRB(130, 130, 130, 0),
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                    colors: [Colors.pink, Colors.orange],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: TextButton(
                  child: new Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Forgot Password?',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 70,
                color: Colors.white,
              ),
              Text(
                ' Or ',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Container(
                height: 1,
                width: 70,
                color: Colors.white,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://p.kindpng.com/picc/s/254-2547752_click-here-to-follow-us-on-facebook-facebook.png'),
              ),
              SizedBox(
                width: 40,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.toutelasignaletique.com/21420-thickbox_default/lettre-g-en-aluminium-decoupe-dimensions-et-coloris-au-choix.jpg'),
              ),
            ],
          ),
        )
      ]),
    )));
  }
}
