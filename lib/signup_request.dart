class SignUpRequest {
   String name;
   String phone_no;
   String email;
   String city;
   //String specialty;
   String password;
   String branch_name;
  // String hospital;
  // String image;

  SignUpRequest({
     this.name,
     this.phone_no,
     this.email,
     this.city,
     this.password,
    //this.hospital,
    //this.image,
    this.branch_name,
    //this.specialty,
  });

  SignUpRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone_no = json['phone_no'];
    email = json['email'];
    city = json['city'];
    password = json['password'];
   // hospital = json['hospital'];
  //  image = json['image'];
    branch_name = json['branch_name'];
    //specialty = json['specialty'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = Map();
    map['name'] = name;
    map['phone_no'] = phone_no;
    map['email'] = email;
    map['city'] = city;
    map['password'] = password;
  //  map['hospital'] = hospital;
  //  map['image'] = image;
    map['branch_name'] = branch_name;
   // map['specialty'] = specialty;
    return map;
  }
}