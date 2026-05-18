import 'package:cep_app_clean_architecture/shared/data/async/either.dart';
import 'package:cep_app_clean_architecture/shared/data/local/local_service/local_service.dart';
import 'package:cep_app_clean_architecture/shared/ui/theme/data/datasource/get_theme_local_datasource.dart';
import 'package:cep_app_clean_architecture/shared/ui/theme/errors/theme_local_exception.dart';

abstract interface class SetThemeLocalDatasource {
  Future<Either<ThemeLocalException, void>> setIsLightTheme(bool isLightTheme);
}

final class SetThemeLocalDatasourceImpl implements SetThemeLocalDatasource {
  final LocalService _localService;

  SetThemeLocalDatasourceImpl(this._localService);

  @override
  Future<Either<ThemeLocalException, void>> setIsLightTheme(bool isLightTheme) async {
    final isLightThemeEither = await _localService.set<bool>(IS_LIGHT_THEME_KEY, isLightTheme);

    switch(isLightThemeEither) {
      case Left():
        return Left(ThemeLocalException(message: 'Erro ao trocar tema'));
      case Right():
        return Right(null);
    }
  }
}