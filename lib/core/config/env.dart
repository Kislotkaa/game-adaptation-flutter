import 'package:game_adaptation_flutter/core/constant/constants.dart';
import 'package:game_adaptation_flutter/core/cubit/intl_cubit/models/language_model.dart';

class EnvironmentConfig {
  static const MODE = String.fromEnvironment('APP_MODE');

  static final List<LanguageModel> languageOptions = [
    LanguageModel(key: IntlLocales.ru, value: 'Русский', english: 'Russian'),
    LanguageModel(key: IntlLocales.en, value: 'English', english: 'English'),
  ];
}
