// To parse this JSON data, do
//
//     final users = usersFromMap(jsonString);

import 'dart:convert';

Users usersFromMap(String str) => Users.fromMap(json.decode(str));

String usersToMap(Users data) => json.encode(data.toMap());

class Users {
  Users({
    this.data,
    this.total,
    this.page,
    this.limit,
  });

  List<Datum>? data;
  int? total;
  int? page;
  int? limit;

  factory Users.fromMap(Map<String, dynamic> json) => Users(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
    total: json["total"],
    page: json["page"],
    limit: json["limit"],
  );

  Map<String, dynamic> toMap() => {
    "data": List<dynamic>.from(data!.map((x) => x.toMap())),
    "total": total,
    "page": page,
    "limit": limit,
  };
}

class Datum {
  Datum({
    this.id,
    this.title,
    this.firstName,
    this.lastName,
    this.picture,
  });

  String? id;
  String? title;
  String? firstName;
  String? lastName;
  String? picture;

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
    id: json["id"],
    title: json["title"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    picture: json["picture"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "firstName": firstName,
    "lastName": lastName,
    "picture": picture,
  };
}
