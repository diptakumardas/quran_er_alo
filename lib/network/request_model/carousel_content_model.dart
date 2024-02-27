class ContentCarouselDataResponse {
  Encoded? encoded;
  int? jrn;

  ContentCarouselDataResponse({this.encoded, this.jrn});

  ContentCarouselDataResponse.fromJson(Map<String, dynamic> json) {
    encoded =
    json['encoded'] != null ? new Encoded.fromJson(json['encoded']) : null;
    jrn = json['jrn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.encoded != null) {
      data['encoded'] = this.encoded!.toJson();
    }
    data['jrn'] = this.jrn;
    return data;
  }
}

class Encoded {
  Data? data;
  bool? isError;
  Error? error;

  Encoded({this.data, this.isError, this.error});

  Encoded.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    isError = json['isError'];
    error = json['error'] != null ? new Error.fromJson(json['error']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['isError'] = this.isError;
    if (this.error != null) {
      data['error'] = this.error!.toJson();
    }
    return data;
  }
}

class Data {
  List<AllCarouselData>? allCarouselData;

  Data({this.allCarouselData});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['allCarouselData'] != null) {
      allCarouselData = <AllCarouselData>[];
      json['allCarouselData'].forEach((v) {
        allCarouselData!.add(new AllCarouselData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.allCarouselData != null) {
      data['allCarouselData'] =
          this.allCarouselData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllCarouselData {
  String? title;
  String? thumbnail;
  String? id;

  AllCarouselData({this.title, this.thumbnail, this.id});

  AllCarouselData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    thumbnail = json['thumbnail'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['thumbnail'] = this.thumbnail;
    data['id'] = this.id;
    return data;
  }
}

class Error {
  int? code;
  String? message;
  String? errMsg;

  Error({this.code, this.message, this.errMsg});

  Error.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    errMsg = json['errMsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['errMsg'] = this.errMsg;
    return data;
  }
}
