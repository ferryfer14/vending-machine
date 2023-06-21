import 'package:dartz/dartz.dart';
import 'package:standart_project/domain/transaction/transaction_failure.dart';
import 'package:standart_project/domain/transaction/transaction_model.dart';  

abstract class ITransactionRepository {
  Future<Either<TransactionFailure, int>> submit({required String id});
  Future<Either<TransactionFailure, Unit>> drop({required int id, required String slot_name,required int transaction_id});
  Future<Either<TransactionFailure, Unit>> success({required int id, required int transaction_id,required int status,});
  Future<Either<TransactionFailure, TransactionModel>> checkStatusTransaction(
      {required int id});
}
