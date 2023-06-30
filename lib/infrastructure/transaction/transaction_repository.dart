import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/domain/transaction/transaction_failure.dart';
import 'package:standart_project/infrastructure/transaction/sensor_dtos.dart';

import '../../common/exceptions/exceptions.dart';
import '../../domain/sensor/sensor_model.dart';
import '../../domain/transaction/i_transaction_repository.dart';
import '../../domain/transaction/refund_model.dart';
import '../../domain/transaction/transaction_model.dart';
import 'data_sources/remote_data_provider.dart';

@Injectable(as: ITransactionRepository)
class TransactionRepository implements ITransactionRepository {
  final TransactionRemoteDataProvider transactionRemoteDataProvider;

  TransactionRepository(this.transactionRemoteDataProvider);
  @override
  Future<Either<TransactionFailure, Unit>> drop(
      {required String slotName}) async {
    try {
      final response =
          await transactionRemoteDataProvider.drop(slotName: slotName);

      return response.fold(
        (failure) {
          return left(failure);
        },
        (unit) => right(unit),
      );
    } on AppException catch (e) {
      return left(TransactionFailure.appException(e));
    }
  }

  @override
  Future<Either<TransactionFailure, RefundModel>> finish(
      {required List<SensorModel> listSensorModel,
      required String transactionCode,
      required int transactionId}) async {
    try {
      final List<SensorModelDto> listSensorModelDto =
          listSensorModel.map((e) => SensorModelDto.fromDomain(e)).toList();
      final response = await transactionRemoteDataProvider.finish(
          listSensorModelDto: listSensorModelDto,
          transactionId: transactionId,
          transactionCode: transactionCode);

      return response.fold((l) => left(l), (items) {
        return right(items.toDomain());
      });
    } on AppException catch (e) {
      return left(TransactionFailure.appException(e));
    }
  }

  @override
  Future<Either<TransactionFailure, TransactionModel>> checkStatusTransaction(
      {required int id}) async {
    try {
      final response =
          await transactionRemoteDataProvider.checkStatusTransaction(id: id);

      return response.fold((l) => left(l), (items) {
        return right(items.toDomain());
      });
    } on AppException catch (e) {
      return left(TransactionFailure.appException(e));
    }
  }

  @override
  Future<Either<TransactionFailure, List<SensorModel>>> getSensor() async {
    try {
      final response = await transactionRemoteDataProvider.getSensor();

      return response.fold((l) => left(l), (items) {
        final listData = items.map((e) => e.toDomain()).toList();
        if (listData.isEmpty) {
          return left(const TransactionFailure.emptyList());
        }
        return right(listData);
      });
    } on AppException catch (e) {
      return left(TransactionFailure.appException(e));
    }
  }
}
