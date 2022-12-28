// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

import 'login.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  late bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFfc7e44),
              Color(0xFFf4326f),
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset('assets/connexion.png', scale: 1.9),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 60),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'CONN',
                          style: TextStyle(
                              color: Color.fromRGBO(244, 50, 111, 1))),
                      TextSpan(
                          text: 'EXION', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                const Text(
                  'Find and Meet people around \nyou to find LOVE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 140),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 64, right: 64),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/ic_fb.png',
                        scale: 6,
                      ),
                      Container(
                        height: 32.0,
                        width: 1,
                        color: Colors.deepOrange,
                      ),
                      const Text(
                        "  Sign in with Facebook",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.normal,
                            color: Colors.deepOrange),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 64, right: 64),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/ic_tw.png',
                        scale: 6,
                      ),
                      Container(
                        height: 32.0,
                        width: 1,
                        color: Colors.deepOrange,
                      ),
                      const Text(
                        "  Sign in with Twitter",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.normal,
                            color: Colors.deepOrange),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 64, right: 64),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.deepOrange),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              child: Text("Already registered? Sign in".toUpperCase(),
                  style: const TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
