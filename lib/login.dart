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
import 'package:lesson1/select.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            Container(
              padding: const EdgeInsets.only(top: 16, bottom: 48),
              alignment: Alignment.center,
              child: const Text('SIGN IN',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 40,
                    color: Colors.white,
                  )),
            ),
            Container(
              padding: const EdgeInsets.only(left: 48, right: 48),
              child: TextFormField(
                controller: _usernameController,
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: 'Enter Email',
                    labelStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 48, right: 48, top: 16),
              child: TextFormField(
                controller: _passwordController,
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                obscureText: true,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: 'Enter Password',
                    labelStyle: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: checkBoxValue,
                    onChanged: (bool? value) {
                      setState(() {
                        checkBoxValue = value!;
                      });
                    },
                  ),
                  const Text(
                    "Remember password",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
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
                  child: Text(
                    "Get started".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.deepOrange),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SelectPage()),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: FittedBox(
                    child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: Image.asset(
                          'assets/ic_fb.png',
                          scale: 5,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: FittedBox(
                    child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: Image.asset(
                          'assets/ic_tw.png',
                          scale: 5,
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            TextButton(
              child: Text("Forgot password ?".toUpperCase(),
                  style: const TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
              onPressed: () {},
            ),
            const SizedBox(height: 40),
            Container(
              color: const Color.fromRGBO(203, 31, 81, 1),
              // padding:
              //     EdgeInsets.symmetric(vertical: 2.5 * DeviceHelper.blockSize),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 80),
                  Text("Don't have account?".toUpperCase(),
                      style: const TextStyle(
                          color: Color.fromRGBO(244, 122, 75, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 8.0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {},
                    child: Text("Sign Up".toUpperCase(),
                        style: const TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
