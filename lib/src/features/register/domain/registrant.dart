import 'package:flutter/material.dart';

class Registrant {
  const Registrant({
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.currentMajor,
    required this.experience,
    required this.notes,
  });

  final String fullName;
  final String email;
  final int phoneNumber;
  final String currentMajor;
  final String experience;
  final String notes;

  Map<String, dynamic> toJson(BuildContext context) {
    return {
      'fullName': fullName,
      'email': email,
      'phoneNumber': phoneNumber,
      'currentMajor': currentMajor,
      'experience': experience,
      'notes': notes,
    };
  }
}
