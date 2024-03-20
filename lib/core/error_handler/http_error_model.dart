import 'package:game_adaptation_flutter/core/l10n/generated/l10n.dart';
import 'package:dio/dio.dart';

class HttpErrorModel {
  final Map<String, dynamic> _json;
  final Headers? _headers;

  Map<String, dynamic> get json => _json;

  Headers get headers => _headers!;

  const HttpErrorModel(this._json, {Headers? headers}) : _headers = headers;

  /// функция, которая возвращает текст из словаря или списка
  String? _getTextFromListOrMap(String key) {
    if (!json.containsKey(key)) {
      return null;
    }
    if (json[key] is String && (json[key] as String).isNotEmpty) {
      /// если приходит ошикба в виде html, то возвращаем null
      if ((json[key] as String).contains('html')) {
        return null;
      }
      return json[key];
    } else if (json[key] is List && (json[key] as List).isNotEmpty) {
      /// если приходит ошикба в виде html, то возвращаем null
      if ((json[key][0] as String).contains('html')) {
        return null;
      }
      return json[key][0];
    }
    return null;
  }

  /// возвращает текст ошибки, если ошибку невозможно обработать
  /// то выходит сообщение 'Что-то пошло не так'
  String get message =>
      _getTextFromListOrMap('detail') ??
      _getTextFromListOrMap('date') ??
      _getTextFromListOrMap('proposition_item_id') ??
      _getTextFromListOrMap('amount') ??
      _getTextFromListOrMap('number') ??
      _getTextFromListOrMap('value') ??
      _getTextFromListOrMap('product_id') ??
      _getTextFromListOrMap('quantity') ??
      _getTextFromListOrMap('is_additive') ??
      _getTextFromListOrMap('number_of_persons') ??
      _getTextFromListOrMap('payment_method') ??
      _getTextFromListOrMap('notes') ??
      _getTextFromListOrMap('change') ??
      _getTextFromListOrMap('gifts') ??
      _getTextFromListOrMap('address_id') ??
      _getTextFromListOrMap('point_id') ??
      _getTextFromListOrMap('editable_address_in_orders') ??
      _getTextFromListOrMap('delivery_at') ??
      _getTextFromListOrMap('delivery_method') ??
      _getTextFromListOrMap('delivery_at_client') ??
      _getTextFromListOrMap('promo_code') ??
      _getTextFromListOrMap('field_name') ??
      _getTextFromListOrMap('proposition_item_id') ??
      _getTextFromListOrMap('reason') ??
      _getTextFromListOrMap('already_requested') ??
      _getTextFromListOrMap('uri') ??
      S.current.somethingWrong;
}
