class LoginApi {
  String id;
  String name;
  String phoneNo;
  String email;
  String city;
  String specialty;
  String image;
  String kyc;
  String password;

  LoginApi(
      {this.id,
        this.name,
        this.phoneNo,
        this.email,
        this.city,
        this.specialty,
        this.image,
        this.kyc,
        this.password});

  LoginApi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phoneNo = json['phone_no'];
    email = json['email'];
    city = json['city'];
    specialty = json['specialty'];
    image = json['image'];
    kyc = json['kyc'];
    password = json['password'];
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
    return data;
  }
}
