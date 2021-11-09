class DoctorCategoriesInfo {
  String id;
  String name;
  String phoneNo;
  String email;
  String city;
  String specialty;
  String image;
  String kyc;
  String password;
  String branchName;
  String marketingExecutive;
  String hospital;
  String createdAt;
  String updatedAt;

  DoctorCategoriesInfo(
      {this.id,
        this.name,
        this.phoneNo,
        this.email,
        this.city,
        this.specialty,
        this.image,
        this.kyc,
        this.password,
        this.branchName,
        this.marketingExecutive,
        this.hospital,
        this.createdAt,
        this.updatedAt});

  DoctorCategoriesInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phoneNo = json['phone_no'];
    email = json['email'];
    city = json['city'];
    specialty = json['specialty'];
    image = json['image'];
    kyc = json['kyc'];
    password = json['password'];
    branchName = json['branch_name'];
    marketingExecutive = json['marketing_executive'];
    hospital = json['hospital'];
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
    data['specialty'] = this.specialty;
    data['image'] = this.image;
    data['kyc'] = this.kyc;
    data['password'] = this.password;
    data['branch_name'] = this.branchName;
    data['marketing_executive'] = this.marketingExecutive;
    data['hospital'] = this.hospital;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
