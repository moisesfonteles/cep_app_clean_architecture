import 'package:cep_app_clean_architecture/shared/data/async/either.dart';
import 'package:cep_app_clean_architecture/shared/data/models/api_response_model.dart';
import 'package:cep_app_clean_architecture/shared/data/remote/errors/api_exception.dart';

abstract interface class ApiService {
  Future<Either<ApiException, ApiResponseModel>> get<T>(String endPoint, {Map<String, dynamic>? queriParams});
}