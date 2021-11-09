class DepartmentInfo {
  String departmentName;

  DepartmentInfo({this.departmentName});

  DepartmentInfo.fromJson(Map<String, dynamic> json) {
    departmentName = json['department_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['department_name'] = this.departmentName;
    return data;
  }
}
