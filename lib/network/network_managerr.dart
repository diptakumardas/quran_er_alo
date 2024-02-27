import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:quran_er_alo/network/request_model/carousel_content_model.dart';
import 'package:quran_er_alo/network/request_model/course_content_model.dart';
import 'package:quran_er_alo/network/request_model/login_request.dart';
import 'package:quran_er_alo/network/request_model/signup_request_model.dart';
import 'package:quran_er_alo/network/response_model/login_response.dart';
import 'package:quran_er_alo/network/response_model/signup_response_model.dart';

import '../app_constants/api_constants.dart';

class NetworkManager{
  Future<SignUpResponse> signUp(SignUpRequest request) async{
    String url = AppConstant().baseUrl+AppConstant().signupUrl ;
    final response = await http.post(
        Uri.parse(url),
      body: jsonEncode(
          request),
      headers: {'Content-Type': 'application/json'},
    );
    if(response.statusCode == 200){
      print(response.body);
      final body = jsonDecode(response.body);
      return SignUpResponse.fromJson(body);
    }
    throw Exception('Error');
  }



  Future<LoginResponse> logIn(LoginRequest request) async{
    String url = AppConstant().baseUrl+AppConstant().loginUrl ;
    print(url);
    print(jsonEncode(request));
    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode(request),
      headers: {'Content-Type': 'application/json'},
    );
    print(response.body);
    if(response.statusCode == 200){
      print(response.body);
      final body = jsonDecode(response.body);
      return LoginResponse.fromJson(body);
    }
    throw Exception('Error');
  }


  Future<ContentCarouselDataResponse> carouselContent() async{
    String url = AppConstant().baseUrl+AppConstant().carouselContent ;
    final response = await http.get(
      Uri.parse(url),
      headers: {'Authorization': 'Bearer d9c314304d434ed1698f3ad71ee7b55c94d28472'},
    );
    //print(response.body);
    if(response.statusCode == 200){
      print("success");
      final body = jsonDecode(response.body);
      return ContentCarouselDataResponse.fromJson(body);
    }
    throw Exception('Error');
  }


  Future<CourseContentResponse> courseContent() async{
    String url = AppConstant().baseUrl+AppConstant().courseContant ;
    final response = await http.get(
      Uri.parse(url),
      headers: {'Authorization': 'Bearer d9c314304d434ed1698f3ad71ee7b55c94d28472'},
    );
    //print(response.body);
    if(response.statusCode == 200){
      print("success2");
      final body = jsonDecode(response.body);
      return CourseContentResponse.fromJson(body);
    }
    throw Exception('Error');
  }




}