class CourseContentResponse {
  Encoded? encoded;
  int? jrn;

  CourseContentResponse({this.encoded, this.jrn});

  CourseContentResponse.fromJson(Map<String, dynamic> json) {
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
  int? totalCourses;
  int? currentPage;
  int? totalPages;
  List<AllCourseData>? allCourseData;

  Data(
      {this.totalCourses,
        this.currentPage,
        this.totalPages,
        this.allCourseData});

  Data.fromJson(Map<String, dynamic> json) {
    totalCourses = json['totalCourses'];
    currentPage = json['currentPage'];
    totalPages = json['totalPages'];
    if (json['allCourseData'] != null) {
      allCourseData = <AllCourseData>[];
      json['allCourseData'].forEach((v) {
        allCourseData!.add(new AllCourseData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCourses'] = this.totalCourses;
    data['currentPage'] = this.currentPage;
    data['totalPages'] = this.totalPages;
    if (this.allCourseData != null) {
      data['allCourseData'] =
          this.allCourseData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllCourseData {
  String? name;
  String? thumbnail;
  int? price;
  double? rating;
  String? id;

  AllCourseData({this.name, this.thumbnail, this.price, this.rating, this.id});

  AllCourseData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    thumbnail = json['thumbnail'];
    price = json['price'];
    rating = json['rating'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['thumbnail'] = this.thumbnail;
    data['price'] = this.price;
    data['rating'] = this.rating;
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
