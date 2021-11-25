class ProfileOpenInfo {
  String id;
  String name;
  String phoneNo;
  String email;
  String city;
  String branchName;
  String profilePicture;
  String password;
  String createdAt;
  String updatedAt;

  ProfileOpenInfo(
      {this.id,
        this.name,
        this.phoneNo,
        this.email,
        this.city,
        this.branchName,
        this.profilePicture,
        this.password,
        this.createdAt,
        this.updatedAt});

  ProfileOpenInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phoneNo = json['phone_no'];
    email = json['email'];
    city = json['city'];
    branchName = json['branch_name'];
    profilePicture = json['profile_picture'];
    password = json['password'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone_no'] = this.phoneNo;
    data['email'] = this.email;
    data['city'] = this.city;
    data['branch_name'] = this.branchName;
    data['profile_picture'] = this.profilePicture;
    data['password'] = this.password;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
