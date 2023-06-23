import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/domain/transaction/transaction_failure.dart';

import '../../common/exceptions/exceptions.dart';
import '../../domain/transaction/i_transaction_repository.dart';
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
  Future<Either<TransactionFailure, Unit>> success(
      {required int id, required int transaction_id, required int status}) async {
    try {
      final response = await transactionRemoteDataProvider.success(
          slot_id: id, transaction_id: transaction_id, status: status);

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
}
