import 'package:game_adaptation_flutter/core/error_handler/http_error_model.dart';

abstract class Failure {
  HttpErrorModel? get data => const HttpErrorModel({});
}

class HttpServiceFailure extends Failure {
  const factory HttpServiceFailure.badRequest(HttpErrorModel data) = BadRequest;

  const factory HttpServiceFailure.notAuthenticated(HttpErrorModel data) = NotAuthenticated;

  const factory HttpServiceFailure.forbidden(HttpErrorModel data) = Forbidden;

  const factory HttpServiceFailure.notFound(HttpErrorModel data) = NotFound;

  const factory HttpServiceFailure.unprocessableEntity(HttpErrorModel data) = UnprocessableEntity;

  const factory HttpServiceFailure.serverError(HttpErrorModel data) = ErrorDetails;

  const factory HttpServiceFailure.tooManyRequests(HttpErrorModel data) = TooManyRequests;
}

class BadRequest implements HttpServiceFailure {
  final HttpErrorModel dataModel;

  const BadRequest(this.dataModel);

  @override
  HttpErrorModel get data => dataModel;
}

class NotAuthenticated implements HttpServiceFailure {
  final HttpErrorModel dataModel;

  const NotAuthenticated(this.dataModel);

  @override
  HttpErrorModel get data => dataModel;
}

class Forbidden implements HttpServiceFailure {
  final HttpErrorModel dataModel;

  const Forbidden(this.dataModel);

  @override
  HttpErrorModel get data => dataModel;
}

class NotFound implements HttpServiceFailure {
  final HttpErrorModel dataModel;

  const NotFound(this.dataModel);

  @override
  HttpErrorModel get data => dataModel;
}

class UnprocessableEntity implements HttpServiceFailure {
  final HttpErrorModel dataModel;

  const UnprocessableEntity(this.dataModel);

  @override
  HttpErrorModel get data => dataModel;
}

class ErrorDetails implements HttpServiceFailure {
  final HttpErrorModel dataModel;

  const ErrorDetails(this.dataModel);

  @override
  HttpErrorModel get data => dataModel;
}

class TooManyRequests implements HttpServiceFailure {
  final HttpErrorModel dataModel;

  const TooManyRequests(this.dataModel);

  @override
  HttpErrorModel get data => dataModel;
}
