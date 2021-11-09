
import 'package:flutter/material.dart';
import 'package:hospital_doctor/model_package/doctor_categories_info.dart';
import 'package:hospital_doctor/model_package/doctor_categories_model.dart';
import 'package:hospital_doctor/page/surgeon.dart';
import 'package:hospital_doctor/routes.dart';

import '../constant.dart';
class DoctorCategories extends StatefulWidget {
  @override
  _DoctorCategoriesState createState() => _DoctorCategoriesState();
}

class _DoctorCategoriesState extends State<DoctorCategories> {

  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  'Doctor Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color:Color(0xff2e60a5),
                    fontSize: 24,
                  ),
                ),
              ],
            ),
           SingleChildScrollView(
             child: Container(
               height: MediaQuery.of(context).size.height/1.2,
               child: ListView.builder(
                 shrinkWrap: true,
                 itemCount: doctorCategoriesModel.length,
                 itemBuilder: (BuildContext context, index){
                   return Padding(
                     padding: const EdgeInsets.only(left: 8,right: 8,top: 6),
                     child: InkWell(
                       child: Container(
                         height: 130,
                         width: MediaQuery.of(context).size.width,
                         child: Card(elevation: 10,
                           child: Row(children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 10,right: 20),
                               child: Container(
                                 height:100,
                                 width: 100,
                                 decoration: BoxDecoration(
                                   color: doctorCategoriesModel[index].colorModel,
                                   borderRadius: BorderRadius.circular(12)
                                 ),
                                 child: Icon(doctorCategoriesModel[index].icon,
                                 size: 70,

                                 ),
                               ),
                             ),
                             Text(
                               doctorCategoriesModel[index].categoriesName,
                               style: TextStyle(
                                 fontSize: 24,
                                 fontWeight: FontWeight.w500
                               ),
                             )
                           ],)
                         ),
                       ),
                       onTap: (){
                         Navigator.pushNamed(context, doctorCategoriesModel[index].openPageName);
                       },
                     ),
                   );
                 }
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
