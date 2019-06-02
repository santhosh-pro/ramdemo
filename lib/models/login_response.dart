class LoginResponse {
  String id;
  String email;
  String role;
  bool isVerified;
  bool isActive;
  int defaultFromAge;
  int defaultToAge;
  String lookingFor;
  double profileCompletePercentage;
  String refreshToken;

  LoginResponse(
      {this.id,
      this.email,
      this.role,
      this.isVerified,
      this.isActive,
      this.defaultFromAge,
      this.defaultToAge,
      this.lookingFor,
      this.profileCompletePercentage,
      this.refreshToken});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    role = json['role'];
    isVerified = json['isVerified'];
    isActive = json['isActive'];
    defaultFromAge = json['defaultFromAge'];
    defaultToAge = json['defaultToAge'];
    lookingFor = json['lookingFor'];
    profileCompletePercentage = json['profileCompletePercentage'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['role'] = this.role;
    data['isVerified'] = this.isVerified;
    data['isActive'] = this.isActive;
    data['defaultFromAge'] = this.defaultFromAge;
    data['defaultToAge'] = this.defaultToAge;
    data['lookingFor'] = this.lookingFor;
    data['profileCompletePercentage'] = this.profileCompletePercentage;
    data['refreshToken'] = this.refreshToken;
    return data;
  }
}