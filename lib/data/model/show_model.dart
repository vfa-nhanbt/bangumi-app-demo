// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

class ShowModel extends Equatable {
  final String id;
  final String title;
  final String imageUrl;
  final DateTime startTime;
  final double length;
  const ShowModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.startTime,
    required this.length,
  });

  ShowModel copyWith({
    String? id,
    String? title,
    String? imageUrl,
    DateTime? startTime,
    double? length,
  }) {
    return ShowModel(
      id: id ?? this.id,
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      startTime: startTime ?? this.startTime,
      length: length ?? this.length,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'startTime': startTime.millisecondsSinceEpoch,
      'length': length,
    };
  }

  factory ShowModel.fromMap(Map<String, dynamic> map) {
    return ShowModel(
      id: (map['id'] ?? '') as String,
      title: (map['title'] ?? '') as String,
      imageUrl: (map['imageUrl'] ?? '') as String,
      startTime: map['startTime'] != null
          ? DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(map['startTime'])
          : DateTime.now().add(const Duration(days: 1)),
      length: (map['length'] ?? 0.0) as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory ShowModel.fromJson(String source) =>
      ShowModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      title,
      imageUrl,
      startTime,
      length,
    ];
  }
}
