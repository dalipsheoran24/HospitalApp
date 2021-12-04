class BranchInfo {
  static String mainBranch ="Main Branch";
  String name;

  BranchInfo({this.name});

  BranchInfo.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
       return data;
  }
}