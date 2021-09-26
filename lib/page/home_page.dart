import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_doctor/constant.dart';
import 'package:hospital_doctor/page/dash_board.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
         color:Constant.primaryColor,
          ),
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 80),
                child: Column(
                  children: [
                    Text(
                      "Welcome to App",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
SizedBox(height: 24,),
                    Container(
                      height: 200,
                      width : 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/doctorimage.jpg.png'),fit: BoxFit.fill
                        )
                      ),
                    ),
                  ],
                ),
              ),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16,top:240),
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Log in',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff2e60a5),
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email',
                            style: TextStyle(
                                color: Color(0xff2e60a5),
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              enabledBorder:OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.black12, width: 2.0),
                                borderRadius: BorderRadius.circular(8.0),
                              ),focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black12, width: 2.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                              hintText:'Enter Email',

                            ),
                          ),
                        ],
                      ),
                       SizedBox(height: 20,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Password',
                           style: TextStyle(
                             color: Color(0xff2e60a5),
                             fontWeight: FontWeight.bold
                           ),
                           ),
                           SizedBox(height: 10,),
                           TextField(
                             obscureText: isPassword,
                            controller: passwordController,
                            decoration: InputDecoration(
                              hintText:'Enter Password',

                              suffixIcon: InkWell(child: Icon(Icons.remove_red_eye,color: Constant.primaryColor,),
                                onTap: (){
                                setState(() {
                                 // ignore: unnecessary_statements
                                 isPassword = !isPassword;
                                });
                                },

                              ),
                              border: InputBorder.none,
                              enabledBorder:OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.black12, width: 2.0),
                                borderRadius: BorderRadius.circular(8.0),
                              ),focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black12, width: 2.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),

                            ),
                      ),
                         ],
                       ),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Constant.primaryColor
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Constant.greenColor,),
                          ),
                        ),
                      ),
                       Row(
                         children: [
                           Container(
                             height: 1,
                             width: MediaQuery.of(context).size.width*0.4,
                             color: Colors.blue,
                           ),
                           Text(
                             'OR',
                             style: TextStyle(
                               color: Colors.blue
                             ),
                           ),
                           Container(
                             height: 1,
                             width: MediaQuery.of(context).size.width*0.4,
                             color: Colors.blue,
                           ),
                         ],
                       ),
                       ElevatedButton(onPressed: (){},
                      child: Row(
                        children: [
                          Icon(Icons.face),
                          SizedBox(width: 70,),
                          Text(
                            'Login with Facebook'
                          ),

                        ],
                      ),
                         style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(Constant.primaryColor),
                         ),
                      ),
                      SizedBox(height: 8,),

                      ElevatedButton(
                         onPressed: (){},
                      child: Row(
                        children: [
                          Icon(Icons.face),
                          SizedBox(width: 70,),
                          Text(
                            'Login with Google'
                          ),

                        ],
                      ),
                         style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(Colors.red),
                         ),
                      ),
SizedBox(height: 40,)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
