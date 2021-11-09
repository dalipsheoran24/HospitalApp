import 'package:flutter/material.dart';
import 'package:hospital_doctor/model_package/doctor_categories_info.dart';
import 'package:hospital_doctor/model_package/surgeon_model.dart';
import 'package:hospital_doctor/routes.dart';

import '../constant.dart';
class SurgeonDoctor extends StatefulWidget {
  @override
  _SurgeonDoctorState createState() => _SurgeonDoctorState();
}

class _SurgeonDoctorState extends State<SurgeonDoctor> {

  @override
  Widget build(BuildContext context) {
    DoctorCategoriesInfo data = ModalRoute
        .of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color.fromRGBO(246, 246, 249, 1),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 40),
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
                        'Doctors',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color:Color(0xff2e60a5),
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width/2.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Constant.primaryColor,width: 2)
                        ),
                        child: Card(elevation: 20,
                          child: Image(image: NetworkImage("https://dazzingshadow.com/hospital_refer/img/"+data.image),
                          fit: BoxFit.cover,),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Constant.primaryColor,
                            ),
                          ),
                          Text(
                            data.specialty,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                            ),
                          ),
                          Row(
                            children: [
                              Card(
                                child: Icon(Icons.phone,color: Constant.greenColor,
                                size: 30,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Phone Number',style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black45,
                                    ),),
                                    Text(data.phoneNo.toString(),style: TextStyle(
                                      color: Constant.primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                    ),)
                                  ],
                                ),
                              )
                            ],
                          ),Row(
                            children: [
                              Card(
                                child: Icon(Icons.star,color: Colors.yellow,
                                  size: 30,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Rating',style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black45,
                                    ),),
                                    Text('4',
                                      //data.rating.toString(),
                                      style: TextStyle(
                                        color: Constant.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500
                                    ),)
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),

                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height/1.72,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Constant.primaryColor,
                          ),),
                          SizedBox(height: 4,),
                          Text(data.email,style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),),
                          SizedBox(height: 12,),
                          Text('DOB',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Constant.primaryColor,
                          ),),
                          SizedBox(height: 4,),
                          Text("12 Mar,1990",style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),),
                          SizedBox(height: 12,),
                          Text('Certificates',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Constant.primaryColor,
                          ),),
                          SizedBox(height: 4,),
                          Text("MBBS MS(USA),M.ch(USA)",
                            //data.qualification,
                            style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),),


                          SizedBox(height: 12,),
                          Text('Service',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Constant.primaryColor,
                          ),),
                          SizedBox(height: 4,),
                          Text(data.hospital,style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}

