import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_doctor/model_package/doctor_categories_info.dart';
import 'package:hospital_doctor/model_package/surgeon_model.dart';
import 'package:http/http.dart';
import '../constant.dart';
import '../routes.dart';
class Detmatologist extends StatefulWidget {
  @override
  _DetmatologistState createState() => _DetmatologistState();
}

class _DetmatologistState extends State<Detmatologist> {
  // List<SurgeonModel> surgeonModelList =[];
  List<DoctorCategoriesInfo> doctorList =[];
  @override
  void initState() {
    //surgeonList();
    featchDoctor();
    super.initState();
  }

  Future featchDoctor() async {
    Uri myUri = Uri.parse(
        "https://dazzingshadow.com/hospital_refer/Api_ci/get_doctor");
    var response = await get(myUri);
    if (response.statusCode == 200) {
      final list = jsonDecode(response.body) as List;
      list.forEach((element){
        doctorList.add(DoctorCategoriesInfo.fromJson(element));
      });
      doctorList.retainWhere((element) =>element.specialty =="detmatologist");
      setState(() {});
    }

  }
  //  void surgeonList(){
  //    surgeonModelList = [
  //      SurgeonModel(
  //        image: 'assets/images/doctorlogosec.jpg',
  //        course:'surgeon',
  //        drName:'Dr.Alina Martin',
  //        mobileNo: 1234567890,
  //        rating: 4.5,
  //        email: 'alinamartin123@gmail.com',
  //        dob: '12 March,1990',
  //        qualification: 'MBBS MS(USA),M.ch(USA)',
  //        service: 'City of Hope Hospital',
  //        docoment1: 'assets/images/cardimage.jpg',
  //        docoment2: 'assets/images/cardimage.jpg',
  //        docoment3: 'assets/images/cardimage.jpg',
  //      ),
  //      SurgeonModel(
  //        image: 'assets/images/drLilyImage.jpg',
  //        course:'surgeon',
  //        drName:'Dr.Lily Jones',
  //        mobileNo: 1234567890,
  //        rating: 4.5,
  //        email: 'alinamartin123@gmail.com',
  //        dob: '12 March,1990',
  //        qualification: 'MBBS MS(USA),M.ch(USA)',
  //        service: 'City of Hope Hospital',
  //        docoment1: 'assets/images/cardimage.jpg',
  //        docoment2: 'assets/images/cardimage.jpg',
  //        docoment3: 'assets/images/cardimage.jpg',
  //      ),
  //      SurgeonModel(
  //        image: 'assets/images/doctorlogothird.jpg',
  //        course:'surgeon',
  //        drName:'Dr.Glenn Smith',
  //        mobileNo: 1234567890,
  //        rating: 4.5,
  //        email: 'alinamartin123@gmail.com',
  //        dob: '12 March,1990',
  //        qualification: 'MBBS MS(USA),M.ch(USA)',
  //        service: 'City of Hope Hospital',
  //        docoment1: 'assets/images/cardimage.jpg',
  //        docoment2: 'assets/images/cardimage.jpg',
  //        docoment3: 'assets/images/cardimage.jpg',
  //      ),
  //      SurgeonModel(
  //        image: 'assets/images/drEmmaImage.jpg',
  //        course:'surgeon',
  //        drName:'Dr.Emma Davies',
  //        mobileNo: 1234567890,
  //        rating: 4.5,
  //        email: 'alinamartin123@gmail.com',
  //        dob: '12 March,1990',
  //        qualification: 'MBBS MS(USA),M.ch(USA)',
  //        service: 'City of Hope Hospital',
  //        docoment1: 'assets/images/cardimage.jpg',
  //        docoment2: 'assets/images/cardimage.jpg',
  //        docoment3: 'assets/images/cardimage.jpg',
  //      ),
  // SurgeonModel(
  //        image: 'assets/images/doctorlogosec.jpg',
  //        course:'surgeon',
  //        drName:'Dr.Alina Martin',
  //   mobileNo: 1234567890,
  //   rating: 4.5,
  //   email: 'alinamartin123@gmail.com',
  //   dob: '12 March,1990',
  //   qualification: 'MBBS MS(USA),M.ch(USA)',
  //   service: 'City of Hope Hospital',
  //   docoment1: 'assets/images/cardimage.jpg',
  //   docoment2: 'assets/images/cardimage.jpg',
  //   docoment3: 'assets/images/cardimage.jpg',
  //      ),
  // SurgeonModel(
  //        image: 'assets/images/drLilyImage.jpg',
  //        course:'surgeon',
  //        drName:'Dr.Lily Jones',
  //   mobileNo: 1234567890,
  //   rating: 4.5,
  //   email: 'alinamartin123@gmail.com',
  //   dob: '12 March,1990',
  //   qualification: 'MBBS MS(USA),M.ch(USA)',
  //   service: 'City of Hope Hospital',
  //   docoment1: 'assets/images/cardimage.jpg',
  //   docoment2: 'assets/images/cardimage.jpg',
  //   docoment3: 'assets/images/cardimage.jpg',
  //      ),
  //
  //    ];
  //  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 60),
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
                    'Detmatologist',textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color:Color(0xff2e60a5),
                      fontSize: 24,
                    ),
                  ),
                ],
              ),

              Container(
                height: MediaQuery.of(context).size.height/1.2,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(scrollDirection: Axis.vertical,
                  itemCount: doctorList.length,
                  shrinkWrap: true,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                  ),
                  // ignore: missing_return
                  itemBuilder: (context,index){
                      return InkWell(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 4),

                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 90,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: NetworkImage( "https://dazzingshadow.com/hospital_refer/img/"+doctorList[index].image ?? 'assets/images/doctorDashImage.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  doctorList[index].name,
                                  style: TextStyle(
                                    color: Constant.primaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                Text(
                                  doctorList[index].specialty,
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star_purple500_sharp,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(Icons.star_purple500_sharp,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(Icons.star_purple500_sharp,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(Icons.star_purple500_sharp,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(Icons.star_purple500_sharp,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Expanded(
                                      child: Icon(Icons.arrow_forward,
                                        color: Constant.primaryColor,
                                        size: 20,
                                      ),
                                    ),


                                  ],
                                )
                              ],
                            ),
                          ) ,
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, Routes.DOCTOR,
                              arguments: doctorList[index]);
                        },
                      );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
