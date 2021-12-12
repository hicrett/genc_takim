import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    LoginModel({
        this.id,
        this.userName,
        this.userEmail,
        this.userPassword,
        this.active,
        this.userTelephone,
        this.birthdate,
        this.registrationTime,
    });

    int? id;
    String? userName;
    String? userEmail;
    String? userPassword;
    bool? active;
    String? userTelephone;
    int? birthdate;
    dynamic registrationTime;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        id: json["id"],
        userName: json["userName"],
        userEmail: json["userEmail"],
        userPassword: json["userPassword"],
        active: json["active"],
        userTelephone: json["userTelephone"],
        birthdate: json["birthdate"],
        registrationTime: json["registrationTime"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "userName": userName,
        "userEmail": userEmail,
        "userPassword": userPassword,
        "active": active,
        "userTelephone": userTelephone,
        "birthdate": birthdate,
        "registrationTime": registrationTime,
    };
}
