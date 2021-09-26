import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospital_doctor/constant.dart';
import 'package:hospital_doctor/model_package/card_model.dart';
import 'package:hospital_doctor/model_package/top_doctor_model.dart';
import 'package:hospital_doctor/page/patients_page.dart';
import 'package:hospital_doctor/page/profile_open_page.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  ScrollController scrollController = ScrollController();
  ScrollController recordController = ScrollController();
  List<TopDoctorModel> topDoctorList = [];
  List<RecordModel> recordList = [];

  @override
  void initState() {
    TopDoctorList();
    RecordnotificationList();
    super.initState();
  }

  // ignore: non_constant_identifier_names
  void TopDoctorList() {
    topDoctorList = [
      TopDoctorModel(name: 'Dr.Lily j.', course: 'Surgeon',
          image:'assets/images/doctorlogoimage.jpg'),
      TopDoctorModel(name: 'Dr.Alina M.', course: 'Surgeon',
          image:'assets/images/doctorlogosec.jpg'),
      TopDoctorModel(name: 'Dr.Glenn S.', course: 'Surgeon',
          image:'assets/images/doctorlogothird.jpg'),
      TopDoctorModel(name: 'Dr.Lily Jone', course: 'Surgeon',
          image:'assets/images/doctorlogoimage.jpg'),
    ];
  }

  void RecordnotificationList() {
    recordList = [
      RecordModel(
          image: 'assets/images/doctorlogoimage.jpg',
          name: 'Martin Wilson',
          request: 'Accept your Request',
          time: '10:20 AM'),
      RecordModel(
          image: 'assets/images/doctorlogoimage.jpg',
          name: 'Antony Martin',
          request: 'Connect With Referral',
          time: '10:20 AM'),
      RecordModel(
          image: 'assets/images/doctorlogoimage.jpg',
          name: 'Martin Wilson',
          request: 'Accept your Request',
          time: '10:20 AM'),
      RecordModel(
          image: 'assets/images/doctorlogoimage.jpg',
          name: 'Antony Martin',
          request: 'Connect With Referral',
          time: '10:20 AM'),
      RecordModel(
          image: 'assets/images/doctorlogoimage.jpg',
          name: 'Martin Wilson',
          request: 'Accept your Request',
          time: '10:20 AM'),
      RecordModel(
          image: 'assets/images/doctorlogoimage.jpg',
          name: 'Antony Martin',
          request: 'Connect With Referral',
          time: '10:20 AM'),
      RecordModel(
          image: 'assets/images/doctorlogoimage.jpg',
          name: 'Martin Wilson',
          request: 'Accept your Request',
          time: '10:20 AM'),
      RecordModel(
          image: 'assets/images/doctorlogoimage.jpg',
          name: 'Antony Martin',
          request: 'Connect With Referral',
          time: '10:20 AM'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'DashBoard',
          style: TextStyle(
              color: Constant.primaryColor, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: Constant.greenColor),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: MediaQuery.of(context).size.height * 0.3,
                color: Constant.primaryColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Card(
                            child: Icon(Icons.close),
                          ),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                    Expanded(
                      child: Row(

                        children: [
                          Container(
                            height: 80,width: 80,

                            decoration: BoxDecoration(

                              shape: BoxShape.circle,
                                image: DecorationImage(fit: BoxFit.cover,
                                    image: AssetImage(
                              "assets/images/morris.jpg",
                            ))),
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Welcome !",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                              ),),
                              SizedBox(height: 8,),
                              Text("Morris Anderson",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                child: ListTile(
                  leading: Card(
                    child: Icon(Icons.person
                    ,color: Constant.primaryColor,
                    ),
                  ),
                  title: Text('Profile'),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileOpenPage()));
                },
              ),
              ListTile(
                leading: Card(
                  child: Icon(Icons.account_balance,color: Constant.primaryColor,),
                ),
                title: Text('YY'),
              ),
              ListTile(
                leading: Card(
                  child: Icon(Icons.share,color: Constant.primaryColor,),
                ),
                title: Text('Refer'),
              ),
              InkWell(
                child: ListTile(
                  leading: Card(
                    child: Icon(Icons.share,color: Constant.primaryColor,),
                  ),
                  title: Text('Patients'),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Patients()));
                },
              ),
              ListTile(
                leading: Card(
                  child: Icon(Icons.share,color: Constant.primaryColor,),
                ),
                title: Text('Doctors'),
              ),
              ListTile(
                leading: Card(
                  child: Icon(Icons.settings,color: Constant.primaryColor,),
                ),
                title: Text('Setting'),
              ),
              ListTile(
                leading: Card(
                  child: Icon(Icons.logout,color: Constant.primaryColor,),
                ),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Top Doctors',
                style: TextStyle(
                    color: Constant.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                child: ListView.builder(
                    controller: scrollController,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: topDoctorList.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        height: 90,
                          width: 90,
                          child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 60,width: 60,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(
                                    topDoctorList[index].image,
                                  ),
                                  fit: BoxFit.cover
                                )
                              ),
                              ),
                              Text(topDoctorList[index].name),
                              Text(topDoctorList[index].course,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black38
                              ),
                              ),
                            ],
                          ),
                        ],
                      ));
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 50, top: 20, bottom: 10),
                          child: Text('Total Referred'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '100',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Constant.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 50, top: 20, bottom: 10),
                          child: Text('Total Connected'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '50',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Constant.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 50, top: 20, bottom: 10),
                          child: Text('Total Referred'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '1020',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Constant.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 50, top: 20, bottom: 10),
                          child: Text('Total Connected'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add,
                            size: 50,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Record Notification',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Text('View All',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                           color: Constant.greenColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: recordList.length,
                    itemBuilder: (BuildContext context, index) {
                      return ListTile(
                        leading:  Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(recordList[index].image),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        title: Row(
                          children: [
                            Text(
                              recordList[index].name,
                              style: TextStyle(
                                fontSize: 12,
                                color: Constant.primaryColor,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(width: 8,),
                            Text(
                              recordList[index].request,
                              style: TextStyle(
                                fontSize: 12,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Expanded(child: Container()),
                            Text(
                              recordList[index].time,
                              style: TextStyle(
                                fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                color: Colors.black26
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
