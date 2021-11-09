

import 'package:dio/dio.dart';

class RefranceLeadInfo {
   String patientName;
   String phoneNo;
   String gender;
   String city;
   String department;
   String disease;
   String symptoms;
   String referringDoctor;
   String branchName;
   String refer_by;
   //String hospital;
  // MultipartFile document;

  RefranceLeadInfo({ this.phoneNo, this.gender, this.city, this.department,this.patientName,this.branchName,this.disease,this.refer_by,
    //this.hospital,
    this.referringDoctor,this.symptoms,
    //this.document
  });

  RefranceLeadInfo.fromJson(Map<String, dynamic> json) {
    patientName = json['patient_name'];
    phoneNo = json['phone_no'];
    gender= json['gender'];
    city = json['city'];
    department = json['department'];
    disease = json['disease'];
    symptoms = json['symptoms'];
    referringDoctor = json['refer_to'];
    branchName = json['branch_name'];
    refer_by = json['refer_by'];
   // hospital = json['hospital'];
    //document = json['document'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = Map();
    map['patient_name'] = patientName;
    map['phone_no'] = phoneNo;
    map['gender'] = gender;
    map['city'] = city;
    map['department'] = department;
    map['disease'] = disease;
    map['symptoms'] = symptoms;
    map['refer_to'] = referringDoctor;
    map['refer_by'] = refer_by;
    map['branch_name'] = branchName;
   // map['hospital'] = hospital;
    //map['document'] = document;
    return map;
  }
}