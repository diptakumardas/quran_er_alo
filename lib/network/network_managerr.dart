import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:quran_er_alo/network/request_model/carousel_content_model.dart';
import 'package:quran_er_alo/network/request_model/course_content_model.dart';
import 'package:quran_er_alo/network/request_model/login_request.dart';
import 'package:quran_er_alo/network/request_model/signup_request_model.dart';
import 'package:quran_er_alo/network/response_model/login_response.dart';
import 'package:quran_er_alo/network/response_model/signup_response_model.dart';

import '../app_constants/api_constants.dart';
LoginResponse loginResponse = LoginResponse();
class NetworkManager {
  

  Future<SignUpResponse> signUp(SignUpRequest request) async {
    String url = AppConstant().baseUrl + AppConstant().signupUrl;
    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode(request),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      print(response.body);
      final body = jsonDecode(response.body);
      return SignUpResponse.fromJson(body);
    }
    throw Exception('Error');
  }

  Future<LoginResponse> logIn(LoginRequest request) async {
    String url = AppConstant().baseUrl + AppConstant().loginUrl;
    print(url);
    print(jsonEncode(request));
    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode(request),
      headers: {'Content-Type': 'application/json'},
    );
    print(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      final body = jsonDecode(response.body);
      loginResponse = LoginResponse.fromJson(body);
      return LoginResponse.fromJson(body);
    }
    else{
      final body = jsonDecode(response.body);
      throw Exception(body["encoded"]["error"]["errMsg"]);}
  }

  Future<ContentCarouselDataResponse> carouselContent() async {
    print("carouselContent");
    String url = AppConstant().baseUrl + AppConstant().carouselContent;
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer ${loginResponse.encoded!.data!.accessToken}'
      },
    );
    //print(response.body);
    if (response.statusCode == 200) {

      //print("success");
      final body = jsonDecode(response.body);
      return ContentCarouselDataResponse.fromJson(body);
}
    throw Exception('Error');
  }

  Future<CourseContentResponse> courseContent() async {
    print("courseContent");
    String url = AppConstant().baseUrl + AppConstant().courseContant;
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer ${loginResponse.encoded!.data!.accessToken}'
      },
    );
    //print(response.body);
    if (response.statusCode == 200) {
      print("success2");
      final body = jsonDecode(response.body);

      return CourseContentResponse.fromJson(body);
    }
    throw Exception('Error');
  }
}
