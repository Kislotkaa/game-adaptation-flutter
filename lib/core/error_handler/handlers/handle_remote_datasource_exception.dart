import 'package:dio/dio.dart';
import 'package:game_adaptation_flutter/core/error_handler/exception.dart';
import 'package:game_adaptation_flutter/core/error_handler/http_error_model.dart';

// Для обработки ошибки, чтобы не прописывать каждый раз try {} catch(e) {}
Exception handleDataSourceException(Object e, StackTrace stackTrace) {
  if (e is DioException) {
    final realUri = e.response?.realUri;
    if (e.type == DioExceptionType.badResponse) {
      final statusCode = e.response!.statusCode!;
      final responseData = HttpErrorModel(
          (e.response!.data == null
              ? {}
              : e.response!.data is String
                  ? {'detail': e.response!.data}
                  : e.response!.data),
          headers: e.response?.headers);
      switch (statusCode) {
        case 400:
          return HttpServiceException.badRequest(responseData);
        case 401:
          return HttpServiceException.notAuthenticated(responseData);
        case 403:
          return HttpServiceException.forbidden(responseData);
        case 404:
          return HttpServiceException.notFound(responseData);
        case 415:
          return HttpServiceException.serverError(responseData);
        case 422:
          return HttpServiceException.unprocessableEntity(responseData);
        case 429:
          return HttpServiceException.tooManyRequests(responseData);
        default:
          return HttpServiceException.serverError(responseData);
      }
    } else if (e.type == DioExceptionType.unknown) {
      return HttpServiceException.serverError(HttpErrorModel({"detail": "Unknown ошибка: $realUri"}));
    }

    return HttpServiceException.serverError(HttpErrorModel({"detail": "Другая необработанная ситуация: $realUri"}));
  }

  return HttpServiceException.serverError(HttpErrorModel({"detail": e.toString()}));
}
