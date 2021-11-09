import 'package:dio/dio.dart';
import 'package:hospital_doctor/model_package/branch_info.dart';


class BranchFeatchData {
  static List<BranchInfo> branchList = [];

  static Future<List<BranchInfo>> getQuestion() async {
    Dio dio = Dio();
    Response response = await dio.get('https://dazzingshadow.com/hospital_refer/Api_ci/get_branch');

    if (response.statusCode == 200) {
      var quizListMap = response.data;
      List<BranchInfo> quizList = [];
      for (int i = 0; i < quizListMap.length; i++) {
        Map<String, dynamic> map = quizListMap[i];
        BranchInfo quizResponse = BranchInfo.fromJson(map);
        quizList.add(quizResponse);
      }
      branchList = quizList;
      return quizList;
    }
    return [];
  }
}