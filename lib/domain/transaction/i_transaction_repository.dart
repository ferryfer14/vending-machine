import 'package:dartz/dartz.dart';
import 'package:standart_project/domain/transaction/refund_model.dart';
import 'package:standart_project/domain/transaction/transaction_failure.dart';
import 'package:standart_project/domain/transaction/transaction_model.dart';

import '../sensor/sensor_model.dart';

abstract class ITransactionRepository {
  Future<Either<TransactionFailure, List<SensorModel>>> getSensor();
  Future<Either<TransactionFailure, Unit>> drop({required String slotName});
  Future<Either<TransactionFailure, RefundModel>> finish(
      {required List<SensorModel> listSensorModel,
      required String transactionCode,
      required int transactionId});
  Future<Either<TransactionFailure, TransactionModel>> checkStatusTransaction(
      {required int id});
}
