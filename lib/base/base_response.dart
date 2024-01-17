import 'package:flutter/material.dart';

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

        default:
          data = json['data'] as T;
          break;
      }
    } catch (e) {
      debugPrint('BaseResp.fromJson: $e of ${T.toString()}');
    }

    code = json['code'];
    message = json['message'];
  }
}
