import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_doctor/model_package/doctor_categories_info.dart';
import 'package:hospital_doctor/model_package/surgeon_model.dart';
import 'package:http/http.dart';
import '../constant.dart';
import '../routes.dart';
class Orthopendic extends StatefulWidget {
  @override
  _OrthopendicState createState() => _OrthopendicState();
}

class _OrthopendicState extends State<Orthopendic> {
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
      doctorList.retainWhere((element) =>element.specialty =="orthopedic");
      setState(() {});
    }

  }
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
                      padding: const EdgeInsets.only(right: 90),
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
                    'Orthopedic',textAlign: TextAlign.center,
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
// Future login(BuildContext context) async {
//   String email = emailController.text;
//
//   String password = passwordController.text;
//   LoginRequest request = LoginRequest(email: email, password: password);
//
//   var url = Uri.parse(
//       'https://dazzingshadow.com/hospital_refer/Api_ci/login_check?email=$email&password=$password');
//   var response = await http.get(url);
//   print('Response status: ${response.statusCode}');
//   print('Response body: ${response.body}');
//
//   if(response.statusCode == 200) {
//     var result =
//     jsonDecode(response.body);
//     if(result is String){
//       Fluttertoast.showToast(
//           msg: "$result"
//       );
//       return;
//     }
//     if(result['status']==true){
//       pref.setString('Id',  result['id']);
//       Navigator.pushNamed(context, Routes.DASH);
//     }
//   }
//   print("");
// }