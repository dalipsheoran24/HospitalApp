import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hospital_doctor/model_package/refrance_lead.dart';

class RefranceApi {
  Future addRefferLead(RefranceLeadInfo requestInfo) async {
    FormData formData = FormData.fromMap(requestInfo.toJson());

    var response = await Dio().post(
      "https://dazzingshadow.com/hospital_refer/Api_ci/add_lead",
        //"https://dazzingshadow.com/hospital_refer/Api_ci/add_lead",
        data: formData);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.data}');
    final map = new Map<String, dynamic>.from(response.data);    // Map<String, dynamic> map = jsonDecode(response.data);
    if (map != null) {
      Fluttertoast.showToast(msg: map['message']);
      if (response.statusCode == 200 &&
          map['message'] == "Lead added Sucessfully!") {
        return RefranceLeadInfo.fromJson(jsonDecode(response.data));


      }
    }
    return false;
  }
}
