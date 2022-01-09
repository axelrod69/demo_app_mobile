import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));
String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  String? id;
  String? district;
  List<Types>? types;
  List<WardNo>? wardNo;

  User({this.id, this.district, this.types, this.wardNo});

  User.fromJson(Map<String, dynamic> json) {
    this.id = json["_id"];
    this.district = json["district"];
    this.types = json["types"]==null ? null : (json["types"] as List).map((e)=>Types.fromJson(e)).toList();
    this.wardNo = json["ward_no"]==null ? null : (json["ward_no"] as List).map((e)=>WardNo.fromJson(e)).toList();
    print(types);
    print(wardNo);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["_id"] = this.id;
    data["district"] = this.district;
    if(this.types != null)
      data["types"] = this.types?.map((e)=>e.toJson()).toList();
    if(this.wardNo != null)
      data["ward_no"] = this.wardNo?.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Types {
  String? category;

  Types({this.category});

  Types.fromJson(Map<String, dynamic> json) {
    this.category = json["category"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["category"] = this.category;
    return data;
  }
}

class WardNo {
  String? ward;
  List<Grievance>? grievance;
  List<General>? general;
  List<Urgent>? urgent;
  List<Services>? services;

  WardNo({this.ward, this.grievance, this.general, this.urgent, this.services});

  WardNo.fromJson(Map<String, dynamic> json) {
    this.ward = json["ward"];
    this.grievance = json["grievance"]==null ? null : (json["grievance"] as List).map((e)=>Grievance.fromJson(e)).toList();
    this.general = json["general"]==null ? null : (json["general"] as List).map((e)=>General.fromJson(e)).toList();
    this.urgent = json["urgent"]==null ? null : (json["urgent"] as List).map((e)=>Urgent.fromJson(e)).toList();
    this.services = json["services"]==null ? null : (json["services"] as List).map((e)=>Services.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["ward"] = this.ward;
    if(this.grievance != null)
      data["grievance"] = this.grievance?.map((e)=>e.toJson()).toList();
    if(this.general != null)
      data["general"] = this.general?.map((e)=>e.toJson()).toList();
    if(this.urgent != null)
      data["urgent"] = this.urgent?.map((e)=>e.toJson()).toList();
    if(this.services != null)
      data["services"] = this.services?.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Services {
  String? serialNumber;
  String? name;
  String? date;
  String? issue;
  List<String>? description;
  String? status;

  Services({this.serialNumber, this.name, this.date, this.issue, this.description, this.status});

  Services.fromJson(Map<String, dynamic> json) {
    this.serialNumber = json["serial_number"];
    this.name = json["name"];
    this.date = json["date"];
    this.issue = json["issue"];
    this.description = json["description"]==null ? null : List<String>.from(json["description"]);
    this.status = json["status"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["serial_number"] = this.serialNumber;
    data["name"] = this.name;
    data["date"] = this.date;
    data["issue"] = this.issue;
    if(this.description != null)
      data["description"] = this.description;
    data["status"] = this.status;
    return data;
  }
}

class Urgent {
  String? serialNumber;
  String? name;
  String? date;
  String? issue;
  List<String>? description;
  String? status;

  Urgent({this.serialNumber, this.name, this.date, this.issue, this.description, this.status});

  Urgent.fromJson(Map<String, dynamic> json) {
    this.serialNumber = json["serial_number"];
    this.name = json["name"];
    this.date = json["date"];
    this.issue = json["issue"];
    this.description = json["description"]==null ? null : List<String>.from(json["description"]);
    this.status = json["status"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["serial_number"] = this.serialNumber;
    data["name"] = this.name;
    data["date"] = this.date;
    data["issue"] = this.issue;
    if(this.description != null)
      data["description"] = this.description;
    data["status"] = this.status;
    return data;
  }
}

class General {
  String? serialNumber;
  String? name;
  String? date;
  String? issue;
  List<String>? description;
  String? status;

  General({this.serialNumber, this.name, this.date, this.issue, this.description, this.status});

  General.fromJson(Map<String, dynamic> json) {
    this.serialNumber = json["serial_number"];
    this.name = json["name"];
    this.date = json["date"];
    this.issue = json["issue"];
    this.description = json["description"]==null ? null : List<String>.from(json["description"]);
    this.status = json["status"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["serial_number"] = this.serialNumber;
    data["name"] = this.name;
    data["date"] = this.date;
    data["issue"] = this.issue;
    if(this.description != null)
      data["description"] = this.description;
    data["status"] = this.status;
    return data;
  }
}

class Grievance {
  String? serialNumber;
  String? name;
  String? date;
  String? issue;
  List<String>? description;
  String? status;

  Grievance({this.serialNumber, this.name, this.date, this.issue, this.description, this.status});

  Grievance.fromJson(Map<String, dynamic> json) {
    this.serialNumber = json["serial_number"];
    this.name = json["name"];
    this.date = json["date"];
    this.issue = json["issue"];
    this.description = json["description"]==null ? null : List<String>.from(json["description"]);
    this.status = json["status"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["serial_number"] = this.serialNumber;
    data["name"] = this.name;
    data["date"] = this.date;
    data["issue"] = this.issue;
    if(this.description != null)
      data["description"] = this.description;
    data["status"] = this.status;
    return data;
  }
}