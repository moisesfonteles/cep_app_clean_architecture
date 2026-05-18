import 'package:cep_app_clean_architecture/shared/data/async/either.dart';
import 'package:cep_app_clean_architecture/shared/ui/theme/errors/theme_local_exception.dart';

abstract interface class ThemeRepository {
  Future<Either<ThemeLocalException, bool>> getIsLightTheme();

  Future<Either<ThemeLocalException, void>> setIsLightTheme(bool isLightTheme);
}