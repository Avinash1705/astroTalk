class RemoveStreamingModel {
  String? status;
  int? code;
  int? count;
  String? data;

  RemoveStreamingModel({this.status, this.code, this.count, this.data});

  RemoveStreamingModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    count = json['count'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    data['count'] = this.count;
    data['data'] = this.data;
    return data;
  }
}
