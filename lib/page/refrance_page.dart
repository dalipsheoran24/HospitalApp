
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:async';



import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hospital_doctor/api/reffer_api.dart';
import 'package:hospital_doctor/model_package/branch_info.dart';
import 'package:hospital_doctor/model_package/department_info.dart';
import 'package:hospital_doctor/model_package/doctor_categories_info.dart';
import 'package:hospital_doctor/model_package/refrance_lead.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import '../constant.dart';
import '../routes.dart';
import 'dash_board.dart';
import 'doctor_categories.dart';
class RefrancesPage extends StatefulWidget {
  @override
  _RefrancesPageState createState() => _RefrancesPageState();
}

class _RefrancesPageState extends State<RefrancesPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController patientController = TextEditingController();
  TextEditingController hospitalController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController referringController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController symptomsController = TextEditingController();
  TextEditingController branchController = TextEditingController();
  TextEditingController diseasesController = TextEditingController();
  List<String> department = ['department 1', 'department 2', 'department 3',];
  List<String> referring = ['referring doctor 1', 'referring doctor 2', 'referring doctor 3', 'referring doctor 4'];
  List<String> city = ['City 1', 'City 2', 'City 3', 'City 4'];
  List<String> diseases = ['Branch 1', 'Branch 2', 'Branch 3',];
  String departmentLocation;
  String referringLocation;
  String cityLocation;
  String diseasesLocation;
  String imagePath;
  List<BranchInfo> branchList =[];
  List<DepartmentInfo> departmentList =[];
  List<DoctorCategoriesInfo> doctorList =[];
  void initState() {
    featchDepartment();
    featchBranch();
    featchDoctor();
    super.initState();
  }
  Future getImagePath() async {
    PickedFile images =
    // ignore: invalid_use_of_visible_for_testing_member
    await ImagePicker.platform.pickImage(source: ImageSource.camera);
     imagePath = images.path;
  }
  Future featchDepartment() async {
    Uri myUri = Uri.parse(
        "https://dazzingshadow.com/hospital_refer/Api_ci/get_department");
    var response = await get(myUri);
    if (response.statusCode == 200) {
      final list = jsonDecode(response.body) as List;
      list.forEach((element){
        departmentList.add(DepartmentInfo.fromJson(element));
      });
      setState(() {

      });
      setState(() {});
    }

  }
  Future featchBranch() async {
    Uri myUri = Uri.parse(
        "https://dazzingshadow.com/hospital_refer/Api_ci/get_branch");
    var response = await get(myUri);
    if (response.statusCode == 200) {
      final list = jsonDecode(response.body) as List;
      list.forEach((element){
        branchList.add(BranchInfo.fromJson(element));
      });
      setState(() {

      });
      setState(() {});
    }

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
      setState(() {

      });
      setState(() {});
    }

  }
  @override
  Widget build(BuildContext context) {

    return Form(key: _formKey,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(color: Color.fromRGBO(246, 246, 249, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                          'Refrance',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color:Color(0xff2e60a5),
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Stack(
                      children:[
                        Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Constant.primaryColor,width: 2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.person_rounded,size: 100,color: Colors.black38,),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(top: 85,left: 115),
                          child: IconButton(onPressed: (){},
                              icon: Icon(Icons.add_circle,color: Constant.greenColor,size: 40,),
                          ),
                        )
                      ]
                    ),
                    SizedBox(height: 24,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('Patient name',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black38
                          ),
                          ),
                        ),
                        Card(elevation: 3,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            // ignore: missing_return, missing_return;
                            validator: (value){
                            if(value == null || value.isEmpty){
                              return 'Please Input name';
                            }
                            return null;
                          },
                            controller: patientController,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        SizedBox(height: 12,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('Patient Gender',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black38
                            ),
                          ),
                        ),
                        Card(elevation: 3,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            // ignore: missing_return, missing_return;
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Please Input gender';
                              }
                              return null;
                            },
                            controller: genderController,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        SizedBox(height: 12,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('Phone Number',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black38
                            ),
                          ),
                        ),
                        Card(elevation: 3,
                          child: TextFormField(
                                   decoration: InputDecoration(
                                        border: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                   ),
                                   ),
                            // ignore: missing_return, missing_return;
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Please Input Phone No';
                              }
                            },
                            controller: phoneController,
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        SizedBox(height: 12,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('City',style: TextStyle(
                              fontSize: 16,color: Colors.black38
                          ),),
                        ),
                        Card(elevation: 3,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            // ignore: missing_return, missing_return;
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Please Input city name';
                              }
                              return null;
                            },
                            controller: cityController,
                            keyboardType: TextInputType.text,
                          ),
                          // child: Row(
                          //   children: [
                          //
                          //     Expanded(child: Container()),
                          //     DropdownButton(
                          //       icon: Icon(Icons.keyboard_arrow_down_outlined,
                          //         size: 50,
                          //         color: Constant.primaryColor,
                          //       ),
                          //       value: cityLocation,
                          //       onChanged: (newValue) {
                          //         setState(() {
                          //           cityLocation = newValue;
                          //         });
                          //       },
                          //       items: city.map((location) {
                          //         return DropdownMenuItem(
                          //           child: new Text(location),
                          //           value: location,
                          //         );
                          //       }).toList(),
                          //     ),
                          //   ],
                          // )
                        ),
                        SizedBox(height: 12,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('Department',style: TextStyle(
                            fontSize: 16,color: Colors.black38
                          ),),
                        ),
                        Card(elevation: 3,
                          child:
      //                     TextFormField(
      //                     decoration: InputDecoration(
      //                     border: InputBorder.none,
      //                     focusedBorder: OutlineInputBorder(
      //
      //                       borderRadius: BorderRadius.circular(8.0),
      //                     ),
      //                   ),
      //   // ignore: missing_return, missing_return;
      //   validator: (value){
      //     if(value == null || value.isEmpty){
      //       return 'Please Input department name';
      //     }
      //     return null;
      //   },
      //   controller: departmentController,
      //   keyboardType: TextInputType.text,
      // ),
                          Row(
                            children: [
                              Expanded(child: Container()),

                              DropdownButton(
                                icon: Icon(Icons.keyboard_arrow_down_outlined,
                                  size: 50,
                                  color: Constant.primaryColor,
                                ),
                                value: departmentLocation,
                                onChanged: (newValue) {
                                  setState(() {
                                    departmentLocation = newValue;
                                  });
                                },
                                items: departmentList.map((location) {
                                  return DropdownMenuItem(
                                    child: new Text(location.departmentName),
                                    value: location.departmentName,
                                  );
                                }).toList(),
                              ),
                            ],
                          )
                        ),
                        SizedBox(height: 12,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('Branch name',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black38
                            ),
                          ),
                        ),
                        Card(elevation: 3,
                          // child: TextFormField(
                          //   decoration: InputDecoration(
                          //     border: InputBorder.none,
                          //     focusedBorder: OutlineInputBorder(
                          //
                          //       borderRadius: BorderRadius.circular(8.0),
                          //     ),
                          //   ),
                          //   // ignore: missing_return, missing_return;
                          //   validator: (value){
                          //     if(value == null || value.isEmpty){
                          //       return 'Please Input branch name';
                          //     }
                          //     return null;
                          //   },
                          //   controller: branchController,
                          //   keyboardType: TextInputType.text,
                          // ),
                            child: Row(
                              children: [
                                Expanded(child: Container()),
                                DropdownButton(icon: Icon(Icons.keyboard_arrow_down_outlined,
                                  size: 50,
                                  color: Constant.primaryColor,
                                ),
                                  value: diseasesLocation,
                                  onChanged: (newValue) {
                                    setState(() {
                                      diseasesLocation = newValue;
                                    });
                                  },
                                  items: branchList.map((location) {
                                    return DropdownMenuItem(
                                      child: new Text(location.name),
                                      value: location.name,
                                    );
                                  }
                                  ).toList(),
                                ),
                              ],
                            )
                        ),
                        SizedBox(height: 12,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('Referring Doctor',style: TextStyle(
                            fontSize: 16,color: Colors.black38
                          ),),
                        ),
                        Card(elevation: 3,
      //                     child: TextFormField(
      //                     decoration: InputDecoration(
      //                     border: InputBorder.none,
      //                     focusedBorder: OutlineInputBorder(
      //
      //                       borderRadius: BorderRadius.circular(8.0),
      //                     ),
      //                   ),
      //   // ignore: missing_return, missing_return;
      //   validator: (value){
      //     if(value == null || value.isEmpty){
      //       return 'Please Input doctor name';
      //     }
      //     return null;
      //   },
      //   controller: referringController,
      //   keyboardType: TextInputType.text,
      // ),
                         child: Row(
                            children: [
                              Expanded(child: Container()),
                              DropdownButton(
                                icon: Icon(Icons.keyboard_arrow_down_outlined,
                                  size: 50,
                                  color: Constant.primaryColor,
                                ),
                                value: referringLocation,
                                onChanged: (newValue) {
                                  setState(() {
                                    referringLocation = newValue;
                                  });
                                },
                                items: doctorList.map((location) {
                                  return DropdownMenuItem(
                                    child: new Text(location.name),
                                    value: location.name,
                                  );
                                }).toList(),
                              ),
                            ],
                          )
                        ),

                        SizedBox(height: 12,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('Diseases name',style: TextStyle(
                            fontSize: 16,color: Colors.black38
                          ),),
                        ),
                        Card(elevation: 3,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            // ignore: missing_return, missing_return;
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Please Input diseases';
                              }
                              return null;
                            },
                            controller: diseasesController,
                            keyboardType: TextInputType.text,
                          ),
                          // child: Row(
                          //   children: [
                          //     Expanded(child: Container()),
                          //     DropdownButton(icon: Icon(Icons.keyboard_arrow_down_outlined,
                          //     size: 50,
                          //       color: Constant.primaryColor,
                          //     ),
                          //       value: diseasesLocation,
                          //       onChanged: (newValue) {
                          //         setState(() {
                          //           diseasesLocation = newValue;
                          //         });
                          //       },
                          //       items: diseases.map((location) {
                          //         return DropdownMenuItem(
                          //           child: new Text(location),
                          //           value: location,
                          //         );
                          //       }).toList(),
                          //     ),
                          //   ],
                          // )
                        ),

                        SizedBox(height: 12,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('Symptoms',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black38
                            ),
                          ),
                        ),
                        Card(elevation: 3,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            // ignore: missing_return, missing_return;
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Please Symptoms';
                              }
                            },
                            controller: symptomsController,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        // SizedBox(height: 12,),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 8),
                        //   child: Text('Hospital Name',
                        //     style: TextStyle(
                        //         fontSize: 16,
                        //         color: Colors.black38
                        //     ),
                        //   ),
                        // ),
                        // Card(elevation: 3,
                        //   child: TextFormField(
                        //     decoration: InputDecoration(
                        //       border: InputBorder.none,
                        //       focusedBorder: OutlineInputBorder(
                        //
                        //         borderRadius: BorderRadius.circular(8.0),
                        //       ),
                        //     ),
                        //     // ignore: missing_return, missing_return;
                        //     validator: (value){
                        //       if(value == null || value.isEmpty){
                        //         return 'Please input hospital name';
                        //       }
                        //     },
                        //     controller: hospitalController,
                        //     keyboardType: TextInputType.text,
                        //   ),
                        // ),
                        SizedBox(height: 12,),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 24),
                        //   child: SizedBox(width: double.infinity,
                        //     child: ElevatedButton(
                        //       onPressed: getImagePath,
                        //       child: Align(alignment: Alignment.center,
                        //         child: Icon(Icons.camera_alt_rounded,size: 40,),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(height: 12,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){if(_formKey.currentState.validate()){
                                referanceLead(context);

                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SingleChildScrollView(
                                        child: Dialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(8.0)), //this right here
                                          child: Container(
                                            height: MediaQuery.of(context).size.height/1.5,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                    height: MediaQuery.of(context).size.width/1.5,
                                                  width: MediaQuery.of(context).size.width/1.28,
                                                  color: Constant.primaryColor,
                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Icon(Icons.check_circle_rounded,
                                                      color: Colors.green,size: 100,
                                                      ),
                                                      Text(
                                                        'SUCCESS',
                                                        style: TextStyle(
                                                          fontSize: 30,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Text('Congratulations!',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 24,
                                                    color: Constant.primaryColor,
                                                  ),
                                                ),
                                                Text('Your Reference has Been Created',
                                                  style: TextStyle(

                                                    fontSize: 16,
                                                    color: Constant.primaryColor,
                                                  ),
                                                ),
                                                ElevatedButton(onPressed: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
                                                },
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                                                    child: Text('Done',
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    color: Colors.white,
                                                ),

                                                ),
                                                  ),
                                                style: ElevatedButton.styleFrom(primary: Constant.greenColor),
                                                ),
                                                SizedBox(height: 16,)
                                              ],
                                            ),
                                          )
                                        ),
                                      );
                                    });
                              }
                              },child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 12),
                                child: Text(
                                'Submit',style: TextStyle(
                                  fontSize: 20,
                            ),
                            ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 12,)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Future referanceLead(BuildContext context) async {
    String patientName = patientController.text;
    String phoneNo = phoneController.text;
    String gender = genderController.text;
    String city = cityController.text;
    String department = departmentLocation.toString();
    String disease = diseasesController.text;
    String symptoms = diseasesController.text;
    String referringDoctor = referringLocation.toString();
    String branchName = diseasesLocation.toString();
    String refer_by = 'Dalip';
   // String hospital = hospitalController.text;
   // MultipartFile fileData = await MultipartFile.fromFile(imagePath, filename:"",
      //contentType: MediaType("image", "jpg"), //add this
  //  );
    // Uint8List bytes = await File(imagePath).readAsBytes();
    // String base64Img = base64.encode(bytes);
    //
    // String document = base64Img;

    if (referringDoctor != null ) {
      RefranceLeadInfo info = RefranceLeadInfo(patientName: patientName,phoneNo: phoneNo,gender: gender,city: city,department: department,
          disease:disease,symptoms:symptoms,referringDoctor:referringDoctor,branchName: branchName,refer_by:refer_by
        //hospital:hospital,
        // document: fileData
      );
      bool status = await RefranceApi().addRefferLead(info);
      if(status == true){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
      }}
  }
}
