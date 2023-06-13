import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../infrastructure/form/form_dtos.dart';
import '../exceptions/exceptions.dart';
import '../../env.dart';

@lazySingleton
class FirestoreClient {
  Future<String> add({dynamic data}) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    final users = firestore.collection('users').doc("data");
    try {
      return users.set(data).then((value) => 'success').catchError((error) {
        print(error);
        throw const AppException.badNetworkException();
      });
    } catch (e) {
      print(e);
      throw const AppException.unexpectedException();
    }
  }

  Future<List> get({String? params, String? value}) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    final users = firestore.collection('users');
    try {
      return users
          .doc('data')
          .get()
          .then((DocumentSnapshot documentSnapshot) {
        var data = documentSnapshot.data() as Map<String, dynamic>?;
        final items = (data!['data'] as List)
            .map((e) => FormModelDto.fromJson(e as Map<String, dynamic>))
            .toList();
        return items;
      }).catchError((error) {
        throw const AppException.badNetworkException();
      });
    } catch (e) {
      throw const AppException.unexpectedException();
    }
  }
}
