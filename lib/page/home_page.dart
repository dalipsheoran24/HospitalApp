import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_doctor/api/login_api.dart';
import 'package:hospital_doctor/constant.dart';
import 'package:hospital_doctor/page/dash_board.dart';
import 'package:http/http.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '../request.dart';
import '../routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Constant.primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 80),
            child: Column(
              children: [
                Text(
                  "Welcome to App",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/doctorimage.jpg.png'),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 24,
                              color: Color(0xff2e60a5),
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                  color: Color(0xff2e60a5),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black12, width: 2.0),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black12, width: 2.0),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                hintText: 'Enter Email',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter email';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Password',
                              style: TextStyle(
                                  color: Color(0xff2e60a5),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            TextFormField(
                              obscureText: isPassword,
                              controller: passwordController,
                              decoration: InputDecoration(
                                hintText: 'Enter Password',
                                suffixIcon: InkWell(
                                  child: Icon(
                                    Icons.remove_red_eye,
                                    color: Constant.primaryColor,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      // ignore: unnecessary_statements
                                      isPassword = !isPassword;
                                    });
                                  },
                                ),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black12, width: 2.0),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black12, width: 2.0),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter password';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 16,),
                        InkWell(
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: Constant.primaryColor),
                          ),
                        ),
                        SizedBox(height: 16,),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                login(context);
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'Log in',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Constant.greenColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16,),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.SIGNUP);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                               Colors.red,
                              ),
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(
                        //     left: 6,
                        //   ),
                        //   child: Row(
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: [
                        //       Container(
                        //         height: 1,
                        //         width: MediaQuery.of(context).size.width / 2.7,
                        //         color: Colors.blue,
                        //       ),
                        //       Padding(
                        //         padding:
                        //             const EdgeInsets.only(right: 4, left: 4),
                        //         child: Text(
                        //           'OR',
                        //           style: TextStyle(color: Colors.blue),
                        //         ),
                        //       ),
                        //       Container(
                        //         height: 1,
                        //         width: MediaQuery.of(context).size.width / 2.7,
                        //         color: Colors.blue,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         height: 20,
                        //         width: 20,
                        //         decoration: BoxDecoration(
                        //             color: Constant.primaryColor,
                        //             image: DecorationImage(
                        //               image: AssetImage(
                        //                   'assets/images/facebookImage.png'),
                        //               fit: BoxFit.cover,
                        //             )),
                        //       ),
                        //       SizedBox(
                        //         width: 70,
                        //       ),
                        //       Text('Login with Facebook'),
                        //     ],
                        //   ),
                        //   style: ButtonStyle(
                        //     backgroundColor: MaterialStateProperty.all(
                        //         Constant.primaryColor),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 4,
                        // ),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         height: 20,
                        //         width: 20,
                        //         decoration: BoxDecoration(
                        //             color: Colors.red,
                        //             image: DecorationImage(
                        //               image: AssetImage(
                        //                   'assets/images/googleImage.png'),
                        //               fit: BoxFit.cover,
                        //             )),
                        //       ),
                        //       SizedBox(
                        //         width: 70,
                        //       ),
                        //       Text('Login with Google'),
                        //     ],
                        //   ),
                        //   style: ButtonStyle(
                        //     backgroundColor:
                        //         MaterialStateProperty.all(Colors.red),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }

  Future login(BuildContext context) async {
    String email = emailController.text;
    String password = passwordController.text;
    LoginRequest request = LoginRequest(email: email, password: password);

    var url = Uri.parse(
        'https://dazzingshadow.com/hospital_refer/Api_ci/login_check?email=$email&password=$password');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if(response.statusCode == 200) {
      String msg =
      jsonDecode(response.body);
      if(msg == 'login successfull'){
       Navigator.pushNamed(context, Routes.DASH);
      }else{
        Fluttertoast.showToast(
            msg: "$msg"
            );
      }
    }
    print("");
  }
}
