import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_doctor/api/login_api.dart';
import 'package:hospital_doctor/constant.dart';
import 'package:hospital_doctor/model_package/branch_info.dart';
import 'package:hospital_doctor/page/dash_board.dart';
import 'package:hospital_doctor/page/home_page.dart';
import 'package:http/http.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import '../request.dart';
import '../routes.dart';
import '../signup_request.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isPassword = true;
  bool isConfirm = true;

  String dpctorId ="";
  String setDoctorList ="";

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController branchController = TextEditingController();
  TextEditingController hospitalController = TextEditingController();
  TextEditingController specialtyController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  List<String> diseases = ["Main Branch","bani park",'raja'];

  String specialtyLocation;
  final _formKey = GlobalKey<FormState>();
  String imagePath;
  List<BranchInfo> branchList =[];
  void initState() {
    fetchData();
    super.initState();
  }
  Future fetchData() async {
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

  Future getImagePath() async {
    PickedFile images =
    // ignore: invalid_use_of_visible_for_testing_member
    await ImagePicker.platform.pickImage(source: ImageSource.camera);
    imagePath = images.path;

  }


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
                      height: MediaQuery.of(context).size.height / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListView(

                          children: [
                            Text(
                              'Sign UP',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xff2e60a5),
                                  fontWeight: FontWeight.bold),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name',
                                  style: TextStyle(
                                      color: Color(0xff2e60a5),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                TextFormField(
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Name',

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
                                      return 'Please enter Name';
                                    }
                                    return null;
                                  },
                                ),
                              ],
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
                                  keyboardType: TextInputType.emailAddress,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mobile No',
                                  style: TextStyle(
                                      color: Color(0xff2e60a5),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                TextFormField(
                                  controller: phoneController,
                                  keyboardType: TextInputType.number,
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
                                    hintText: 'Enter Mobile No',
                                  ),

                                  validator: (value) {
                                    if (value.length != 10) {
                                      return 'Please enter Mobile no';
                                    }
                                    return null;
                                  },
                                ),
                              ],
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Confirm Password',
                                  style: TextStyle(
                                      color: Color(0xff2e60a5),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                TextFormField(
                                  obscureText: isConfirm,
                                  controller: confirmController,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Confirm Password',
                                    suffixIcon: InkWell(
                                      child: Icon(
                                        Icons.remove_red_eye,
                                        color: Constant.primaryColor,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          // ignore: unnecessary_statements
                                          isConfirm = !isConfirm;
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
                                      return 'Please enter Confirm password';
                                    }
                                    if(value != passwordController.text)
                                      return 'Password Not Match';
                                    return null;

                                  },
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'City',
                                  style: TextStyle(
                                      color: Color(0xff2e60a5),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                TextFormField(
                                  controller: cityController,
                                  decoration: InputDecoration(
                                    hintText: 'Enter City',
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
                            // Column(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Text(
                            //       'Specialty',
                            //       style: TextStyle(
                            //           color: Color(0xff2e60a5),
                            //           fontWeight: FontWeight.bold),
                            //     ),
                            //     SizedBox(
                            //       height: 4,
                            //     ),
                            //     Card(elevation: 3,
                            //       // child: TextFormField(
                            //       //   decoration: InputDecoration(
                            //       //     border: InputBorder.none,
                            //       //     focusedBorder: OutlineInputBorder(
                            //       //
                            //       //       borderRadius: BorderRadius.circular(8.0),
                            //       //     ),
                            //       //   ),
                            //       //   // ignore: missing_return, missing_return;
                            //       //   validator: (value){
                            //       //     if(value == null || value.isEmpty){
                            //       //       return 'Please Input diseases';
                            //       //     }
                            //       //     return null;
                            //       //   },
                            //       //   controller: specialtyController,
                            //       //   keyboardType: TextInputType.text,
                            //       // ),
                            //        child: Row(
                            //         children: [
                            //           Expanded(child: Container()),
                            //           DropdownButton(icon: Icon(Icons.keyboard_arrow_down_outlined,
                            //           size: 50,
                            //             color: Constant.primaryColor,
                            //           ),
                            //             value: specialtyLocation,
                            //             onChanged: (newValue) {
                            //               setState(() {
                            //                 specialtyLocation = newValue;
                            //               });
                            //             },
                            //             items: diseases.map((location) {
                            //               return DropdownMenuItem(
                            //                 child: new Text(location),
                            //                 value: location,
                            //               );
                            //             }).toList(),
                            //           ),
                            //         ],
                            //       )
                            //     ),
                            //     // TextFormField(
                            //     //   controller: specialtyController,
                            //     //   decoration: InputDecoration(
                            //     //     hintText: 'Enter specialty',
                            //     //     border: InputBorder.none,
                            //     //     enabledBorder: OutlineInputBorder(
                            //     //       borderSide: const BorderSide(
                            //     //           color: Colors.black12, width: 2.0),
                            //     //       borderRadius: BorderRadius.circular(8.0),
                            //     //     ),
                            //     //     focusedBorder: OutlineInputBorder(
                            //     //       borderSide: const BorderSide(
                            //     //           color: Colors.black12, width: 2.0),
                            //     //       borderRadius: BorderRadius.circular(8.0),
                            //     //     ),
                            //     //   ),
                            //     //   validator: (value) {
                            //     //     if (value == null || value.isEmpty) {
                            //     //       return 'Please enter specialty';
                            //     //     }
                            //     //     return null;
                            //     //   },
                            //     // ),
                            //   ],
                            // ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Branch Name',
                                  style: TextStyle(
                                      color: Color(0xff2e60a5),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                // TextFormField(
                                //   controller: branchController,
                                //   decoration: InputDecoration(
                                //     hintText: 'Enter branch name',
                                //     border: InputBorder.none,
                                //     enabledBorder: OutlineInputBorder(
                                //       borderSide: const BorderSide(
                                //           color: Colors.black12, width: 2.0),
                                //       borderRadius: BorderRadius.circular(8.0),
                                //     ),
                                //     focusedBorder: OutlineInputBorder(
                                //       borderSide: const BorderSide(
                                //           color: Colors.black12, width: 2.0),
                                //       borderRadius: BorderRadius.circular(8.0),
                                //     ),
                                //   ),
                                //   validator: (value) {
                                //     if (value == null || value.isEmpty) {
                                //       return 'Please enter branch_name';
                                //     }
                                //     return null;
                                //   },
                                // ),
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
                                    //       return 'Please Input diseases';
                                    //     }
                                    //     return null;
                                    //   },
                                    //   controller: specialtyController,
                                    //   keyboardType: TextInputType.text,
                                    // ),
                                    child: Row(
                                      children: [
                                        Expanded(child: Container()),
                                        DropdownButton(icon: Icon(Icons.keyboard_arrow_down_outlined,
                                          size: 50,
                                          color: Constant.primaryColor,
                                        ),
                                          value: specialtyLocation,
                                          onChanged: (newValue) {
                                            setState(() {
                                              specialtyLocation = newValue;
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
                              ],
                            ),
                            // Column(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Text(
                            //       'Hospital',
                            //       style: TextStyle(
                            //           color: Color(0xff2e60a5),
                            //           fontWeight: FontWeight.bold),
                            //     ),
                            //     SizedBox(
                            //       height: 4,
                            //     ),
                            //     TextFormField(
                            //       obscureText: isPassword,
                            //       controller: hospitalController,
                            //       decoration: InputDecoration(
                            //         hintText: 'Enter Hospital',
                            //         border: InputBorder.none,
                            //         enabledBorder: OutlineInputBorder(
                            //           borderSide: const BorderSide(
                            //               color: Colors.black12, width: 2.0),
                            //           borderRadius: BorderRadius.circular(8.0),
                            //         ),
                            //         focusedBorder: OutlineInputBorder(
                            //           borderSide: const BorderSide(
                            //               color: Colors.black12, width: 2.0),
                            //           borderRadius: BorderRadius.circular(8.0),
                            //         ),
                            //       ),
                            //       validator: (value) {
                            //         if (value == null || value.isEmpty) {
                            //           return 'Please enter hospital name';
                            //         }
                            //         return null;
                            //       },
                            //     ),
                            //   ],
                            // ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    signUp(context);

                                  }
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Constant.greenColor,
                                  ),
                                ),
                              ),
                            ),
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
  Future signUp(BuildContext context) async {

    String name = nameController.text;
    String phone_no = phoneController.text;
    String email = emailController.text;
    String city = cityController.text;
    //String specialty = specialtyLocation;
        //specialtyController.text;
    String password = passwordController.text;
    String branch_name = specialtyLocation.toString();
        //branchController.text;
   // String hospital = hospitalController.text;
    String image = nameController.text;

    if (name.isEmpty) {
      Fluttertoast.showToast(msg: "Please input name");
      return;
    }
    if (phone_no.isEmpty) {
      Fluttertoast.showToast(msg: "Please input phone_no");
      return;
    }
    if (password.isEmpty) {
      Fluttertoast.showToast(msg: "Please input password");
      return;
    }
    if (email.isEmpty) {
      Fluttertoast.showToast(msg: "Please input Email");
      return;
    }
    if (city.isEmpty) {
      Fluttertoast.showToast(msg: "Please input city");
      return;
    }
    // if (specialty.isEmpty) {
    //   Fluttertoast.showToast(msg: "Please input specialty");
    //   return;
    // }
    // if (hospital.isEmpty) {
    //   Fluttertoast.showToast(msg: "Please input hospital");
    //   return;
    // }
    if (image.isEmpty) {
      Fluttertoast.showToast(msg: "Please input image");
      return;
    }
if (branch_name.isEmpty) {
      Fluttertoast.showToast(msg: "Please input branch_name");
      return;
    }

    SignUpRequest request = SignUpRequest(

         name:name,
     phone_no:phone_no,
     email:email,
     city:city,
        // specialty:specialty,
         password:password,
         branch_name:branch_name,
         //hospital:hospital,
         //image:image,

    );

    var url = Uri.parse('https://dazzingshadow.com/hospital_refer/Api_ci/registration');
    var response = await http.post(url, body: request.toJson());
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    Map<String, dynamic> map =
    jsonDecode(response.body) as Map<String, dynamic>;

    if (map != null && map['message'] != null) {
      Fluttertoast.showToast(msg: map['message']);

      if (response.statusCode == 200 &&
          map['message'] == "Registration Sucessfull!") {
        // dpctorId = response['info']['id'];
        // setVendor( response['info']);

        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      }
    }
  }

}
