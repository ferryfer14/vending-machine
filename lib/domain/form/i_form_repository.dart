import 'package:dartz/dartz.dart';  
import 'package:standart_project/domain/form/form_failure.dart';

abstract class IFormRepository {
  Future<Either<FormFailure, Unit>> save({required String fullname, required String email, required String phone});
}
