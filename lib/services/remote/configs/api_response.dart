import 'package:appsos/services/remote/configs/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.success(T data) = Success<T>;
  const factory ApiResponse.error(NetworkExceptions error) = Error<T>;
}
