import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/domain/caraousel/caraousel_failure.dart';
import 'package:standart_project/domain/form/i_form_repository.dart';

import '../../common/exceptions/exceptions.dart';
import '../../domain/caraousel/caraousel_model.dart';
import '../../domain/caraousel/i_caraousel_repository.dart';
import '../../domain/form/form_failure.dart';
import 'data_sources/local_data_provider.dart';

@Injectable(as: IFormRepository)
class FormRepository implements IFormRepository {
  final FormLocalDataProvider formLocalDataProvider;

  FormRepository(this.formLocalDataProvider);
  @override
  Future<Either<FormFailure, Unit>> save(
      {required String fullname,
      required String email,
      required String phone}) async {
    try {
      final response =
          await formLocalDataProvider.save(fullname: fullname, email: email, phone: phone);

      return response.fold(
        (failure) {
          return left(failure);
        },
        (unit) => right(unit),
      );
    } on AppException catch (e) {
      return left(FormFailure.appException(e));
    }
  }
}
