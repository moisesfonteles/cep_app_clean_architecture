import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

import 'package:cep_app_clean_architecture/shared/data/async/either.dart';
import 'package:cep_app_clean_architecture/shared/data/local/errors/local_exception.dart';
import 'package:cep_app_clean_architecture/shared/data/local/local_service/local_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class SharedPreferencesService implements LocalService {

  @override
  Future<Either<LocalException, T?>> get<T>(String key) async {
    try {
      final instance = await SharedPreferences.getInstance();

      if(T == String) {
        return Right(instance.getString(key) as T?);
      } else if (T == bool) {
        return Right(instance.getBool(key) as T?);
      }

      return Right(null);
    } catch (error, st) {
      log('Error loading local String or bool', error: error, stackTrace: st);
      return Left(
        const LocalException(
          message: 'Error loading cache. Please, try again later.'
        ),
      );
    }
  }

  @override
  Future<Either<LocalException, void>> set<T>(String key, T data) async {
    try {
      final instance = await SharedPreferences.getInstance();

      if(T == String) {
        await instance.setString(key, data as String);
      } else if(T == bool) {
        await instance.setBool(key, data as bool);
      }

      return Right(null);
    } catch(error, st) {
      log("Error setting local String or bool", error: error, stackTrace: st);

      return Left(
        const LocalException(
          message: 'Error setting cache. Please, try again later'
        )
      );
    }
  }
}