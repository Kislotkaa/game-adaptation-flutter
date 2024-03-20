import 'package:game_adaptation_flutter/core/error_handler/http_error_model.dart';

class HttpServiceException implements Exception {
  const factory HttpServiceException.badRequest(HttpErrorModel data) = BadRequest;

  const factory HttpServiceException.notAuthenticated(HttpErrorModel data) = NotAuthenticated;

  const factory HttpServiceException.forbidden(HttpErrorModel data) = Forbidden;

  const factory HttpServiceException.notFound(HttpErrorModel data) = NotFound;

  const factory HttpServiceException.unprocessableEntity(HttpErrorModel data) = UnprocessableEntity;

  const factory HttpServiceException.serverError(HttpErrorModel data) = ErrorDetails;

  const factory HttpServiceException.tooManyRequests(HttpErrorModel data) = TooManyRequests;
}

class BadRequest implements HttpServiceException {
  final HttpErrorModel data;

  const BadRequest(this.data);
}

class NotAuthenticated implements HttpServiceException {
  final HttpErrorModel data;

  const NotAuthenticated(this.data);
}

class Forbidden implements HttpServiceException {
  final HttpErrorModel data;

  const Forbidden(this.data);
}

class NotFound implements HttpServiceException {
  final HttpErrorModel data;

  const NotFound(this.data);
}

class UnprocessableEntity implements HttpServiceException {
  final HttpErrorModel data;

  const UnprocessableEntity(this.data);
}

class ErrorDetails implements HttpServiceException {
  final HttpErrorModel data;

  const ErrorDetails(this.data);
}

class TooManyRequests implements HttpServiceException {
  final HttpErrorModel data;

  const TooManyRequests(this.data);
}

class LocationException {
  const factory LocationException.deniedForever() = DeniedForeverException;

  const factory LocationException.denied() = DeniedException;

  const factory LocationException.gpsOff() = GpsOffException;
}

class DeniedForeverException implements LocationException {
  const DeniedForeverException();
}

class DeniedException implements LocationException {
  const DeniedException();
}

class GpsOffException implements LocationException {
  const GpsOffException();
}

class SBPException {
  const factory SBPException.notSupported() = SBPNotSupportedException;
}

class SBPNotSupportedException implements SBPException {
  const SBPNotSupportedException();
}

class InAppUpdateException {
  const factory InAppUpdateException.somethingWentWrong(String? message) =
      InAppUpdateExceptionSomethingWentWrongException;
}

class InAppUpdateExceptionSomethingWentWrongException implements InAppUpdateException {
  final String? message;

  const InAppUpdateExceptionSomethingWentWrongException(this.message);
}
