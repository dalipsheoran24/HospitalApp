
import 'dart:ui';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  @override
  Widget build(BuildContext context) {
    bool switchValue = false;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Card(elevation: 20,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(Icons.arrow_back_ios,
                                color: Constant.greenColor,
                              ),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        'Setting',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color:Color(0xff2e60a5),
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                    SizedBox(height: 10,),
                    Container(
                      child: Row(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                              child: Icon( Icons.vpn_key,size: 30,color: Constant.primaryColor,),

                            ),
                          ),SizedBox(width: 20,),
                          Text(
                            'Change Password',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),
                    ),

                  SizedBox(height: 10,),
                  Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.black38,),
                  SizedBox(height: 10,),
                  Container(
                    child: Row(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Icon(  Icons.notifications,size: 30,color: Constant.primaryColor,),

                          ),
                        ),SizedBox(width: 20,),
                        Text(
                          'Notification',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Expanded(child: Container(),),
                        FlutterSwitch(
                          width: 70.0,
                          height: 30,
                          toggleSize: 25.0,
                          value: switchValue,
                          borderRadius: 80.0,
                          padding: 2.0,
                          toggleColor: Constant.primaryColor,
                          switchBorder: Border.all(
                            color: Color.fromRGBO(2, 107, 206, 1),
                            width: 2.0,
                          ),
                          toggleBorder: Border.all(
                            color: Color.fromRGBO(2, 107, 206, 1),
                            width: 2,
                          ),
                          activeColor: Colors.white,
                          inactiveColor: Colors.white,
                          onToggle: (value) {
                            setState(() {
                              switchValue = value;
                            });
                          },
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),
                  Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.black38,),SizedBox(height: 10,),
                  Container(
                    child: Row(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Icon( Icons.messenger,size: 30,color: Constant.primaryColor,),

                          ),
                        ),SizedBox(width: 20,),
                        Text(
                          'Faq',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),
                  Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.black38,),SizedBox(height: 10,),
                  Container(
                    child: Row(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Icon( Icons.request_page_sharp,size: 30,color: Constant.primaryColor,),

                          ),
                        ),SizedBox(width: 20,),
                        Text(
                          'Terms of Service',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),
                  Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.black38,),SizedBox(height: 10,),
                  Container(
                    child: Row(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Icon( Icons.help,size: 30,color: Constant.primaryColor,),

                          ),
                        ),SizedBox(width: 20,),
                        Text(
                          'Help',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),
                  Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.black38,),SizedBox(height: 10,),
                  Container(
                    child: Row(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Icon( Icons.privacy_tip,size: 30,color: Constant.primaryColor,),

                          ),
                        ),SizedBox(width: 20,),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),
                  Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.black38,),SizedBox(height: 10,),
                  Container(
                    child: Row(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Icon( Icons.call,size: 30,color: Constant.primaryColor,),

                          ),
                        ),SizedBox(width: 20,),
                        Text(
                          'Contact us',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),
                  Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.black38,),
                  SizedBox(height: 10,),
                  Container(
                    child: Row(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Icon( Icons.logout,size: 30,color: Constant.primaryColor,),

                          ),
                        ),SizedBox(width: 20,),
                        Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),
                  Container(height: 1,width: MediaQuery.of(context).size.width,color: Colors.black38,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
