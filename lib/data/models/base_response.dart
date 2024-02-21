import 'package:flutter/material.dart';
import 'package:my_base_code/core/exceptions/app_exception.dart';
import 'package:my_base_code/core/exceptions/json_format_exception.dart';
import 'package:my_base_code/data/models/post_model.dart';

class BaseResp<T> {
  int? code;
  String? message;
  T? data;

  BaseResp(this.code, this.message, this.data);

  BaseResp.fromJson(Map<String, dynamic> json) {
    try {
      switch (T) {
        case String:
          data = json['data']?.toString() as T;
          break;
        case int:
          data = json['data'] as T;
          break;
        case double:
          data = json['data'] as T;
          break;
        case List:
          data = List.from(json['data']) as T;
          break;
        case PostModel:
          data = PostModel.fromJson(json['data']) as T;
          break;
        case const (List<PostModel>):
          data = (json['data'] as List)
              .map((e) => PostModel.fromJson(e))
              .toList() as T;
          break;

        default:
          data = json['data'] as T;
          break;
      }
    } catch (e) {
      AppException message = JsonFormatException(e.toString());
      throw message;
    }

    code = json['status_code'];
    message = json['message'];
  }
}
