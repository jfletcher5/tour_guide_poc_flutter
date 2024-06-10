import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? getTourID(
  dynamic tours,
  String? tourName,
) {
  // Ensure tours is a list by decoding the JSON if it's a string
  List<dynamic> tourList;

  if (tours is String) {
    try {
      tourList = jsonDecode(tours);
    } catch (e) {
      print('Error decoding JSON: $e');
      return null;
    }
  } else if (tours is List) {
    tourList = tours;
  } else {
    print('Invalid input: tours should be a JSON string or a list');
    return null;
  }

  // Iterate through the list to find the matching tourName
  for (var tour in tourList) {
    if (tour is Map<String, dynamic> && tour['tourName'] == tourName) {
      return tour['tourID'];
    }
  }

  // If no matching tourName is found, return null
  return null;
}
