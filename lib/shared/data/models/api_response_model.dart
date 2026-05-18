import 'package:cep_app_clean_architecture/shared/data/models/api_base_model.dart';

final class ApiResponseModel<T> extends ApiBaseModel {
  final T data;

  const ApiResponseModel({
    required this.data,
    super.message,
    required super.statusCode,
  });
}