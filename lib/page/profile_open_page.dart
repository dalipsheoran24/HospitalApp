import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class ProfileOpenPage extends StatefulWidget {
  @override
  _ProfileOpenPageState createState() => _ProfileOpenPageState();
}

class _ProfileOpenPageState extends State<ProfileOpenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Constant.greenColor,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: Text(
                        'Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xff2e60a5),
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Stack(
                    children:[
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Constant.primaryColor,width: 2),
                          image: DecorationImage(
                            image: AssetImage('assets/images/morris.jpg'),fit: BoxFit.cover,
                          ),shape: BoxShape.circle,
                        ), ),
                      Padding(
                        padding: const EdgeInsets.only(top: 95,left: 130),
                        child: Container(height: 30,width: 30,decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Constant.greenColor,
                        ),
                          child: IconButton(onPressed: (){},
                            icon: Icon(Icons.mode_edit,color:Colors.white,size: 16,),
                          ),
                        ),
                      )
                    ]
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Morris Anderson',
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xff2e60a5),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone Number',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '1234567890',
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xff2e60a5),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email ID',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'morrisanderson10@gmail.com',
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xff2e60a5),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Speciality',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Neurosurgeon',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xff2e60a5),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xff2e60a5),
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DOB',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '12/10/1995',
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xff2e60a5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Upload Certificates'),
                      ),
                      Container(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            addButton(context),
                            createCertificate(context),
                            createCertificate(context),
                            createCertificate(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Upload ID Document'),
                      ),
                      Container(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            addButton(context),
                            createCertificate(context),
                            createCertificate(context),
                            createCertificate(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Bank Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bank Name',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Bank Name',
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xff2e60a5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Account Name',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Account Name',
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xff2e60a5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Account Number',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Account Number',
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xff2e60a5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IFSC Code',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'IFSC Code',
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xff2e60a5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding createCertificate(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width / 4.5,
        decoration: BoxDecoration(
            border: Border.all(color: Constant.greenColor, width: 2),
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: AssetImage('assets/images/cardimage.jpg'),
                fit: BoxFit.cover)),
      ),
    );
  }

  Padding addButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width / 4.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Constant.greenColor, width: 2),
        ),
        child: IconButton(
          icon: Icon(
            Icons.add_circle,
            size: 40,
            color: Constant.greenColor,
          ),
        ),
      ),
    );
  }
}
