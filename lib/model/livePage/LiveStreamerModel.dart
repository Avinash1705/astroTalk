class LiveStreamerModel {
  String? status;
  int? code;
  int? count;
  List<Data>? data;

  LiveStreamerModel({this.status, this.code, this.count, this.data});

  LiveStreamerModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    count = json['count'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    data['count'] = this.count;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? userId;
  String? userName;
  String? liveId;

  Data({this.userId, this.userName, this.liveId});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user id'];
    userName = json['user name'];
    liveId = json['live id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user id'] = this.userId;
    data['user name'] = this.userName;
    data['live id'] = this.liveId;
    return data;
  }
}
