// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BasePagging<T> {
  int? totalPage;
  int? currentPage;
  int? totalRecord;
  List<T>? result;
  BasePagging({
    this.totalPage,
    this.currentPage,
    this.totalRecord,
    this.result,
  });

  BasePagging.fromJson(Map<String, dynamic> json) {
    try {
      switch (T) {
        // case String:
        //   result = (json['result'] as List).map((e) => T.fromJson(e)).toList()
        //       as List<T>;
        //   break;

        default:
          // result = json['data'] as T;
          break;
      }
    } catch (e) {
      debugPrint('BasePagging.fromJson: $e of ${T.toString()}');
    }
    totalPage = json['total_page'] as int?;
    currentPage = json['current_page'] as int?;
    totalRecord = json['total_record'] as int?;
  }
}
