import 'package:game_adaptation_flutter/core/error_handler/exception.dart' as exceptions;
import 'package:game_adaptation_flutter/core/error_handler/failure.dart';
import 'package:game_adaptation_flutter/core/error_handler/http_error_model.dart';

HttpServiceFailure handleLocalDataSourceException(exceptions.HttpServiceException e) {
  if (e is exceptions.BadRequest) {
    return HttpServiceFailure.badRequest(e.data);
  }

  if (e is exceptions.NotAuthenticated) {
    return HttpServiceFailure.notAuthenticated(e.data);
  }

  if (e is exceptions.Forbidden) {
    return HttpServiceFailure.forbidden(e.data);
  }

  if (e is exceptions.NotFound) {
    return HttpServiceFailure.notFound(e.data);
  }

  if (e is exceptions.ErrorDetails) {
    return HttpServiceFailure.serverError(e.data);
  }

  if (e is exceptions.ErrorDetails) {
    return HttpServiceFailure.serverError(e.data);
  }

  if (e is exceptions.UnprocessableEntity) {
    return HttpServiceFailure.unprocessableEntity(e.data);
  }

  if (e is exceptions.TooManyRequests) {
    return HttpServiceFailure.tooManyRequests(e.data);
  }

  return const HttpServiceFailure.serverError(HttpErrorModel({}));
}
