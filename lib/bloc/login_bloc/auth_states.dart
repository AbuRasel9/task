import 'package:equatable/equatable.dart';
import 'package:task/data/response/response.dart';
import 'package:task/model/auth/login_request.dart';
import 'package:task/model/auth/registration_request.dart';
import 'package:task/utils/enums/enums.dart';

class AuthState extends Equatable {
  final LoginRequest loginRequest;
  final RegistrationRequest registrationRequest;
  final String message;
  final LoginStatus loginStatus;

  AuthState({
    LoginRequest? loginRequest,
    RegistrationRequest? registrationRequest,
    this.message = '',
    this.loginStatus = LoginStatus.inProgress,
  })  : loginRequest = loginRequest ?? LoginRequest(),
        registrationRequest = registrationRequest ?? RegistrationRequest();

  AuthState copyWith({
    LoginRequest? loginRequest,
    RegistrationRequest? registrationRequest,
    String? message,
    LoginStatus? loginStatus,
  }) {
    return AuthState(
        loginRequest: loginRequest ?? this.loginRequest,
        registrationRequest: registrationRequest ?? this.registrationRequest,
        message: message ?? this.message,
        loginStatus: loginStatus ?? this.loginStatus);
  }

  @override
  List<Object?> get props =>
      [loginRequest, registrationRequest, message, loginStatus];
}
