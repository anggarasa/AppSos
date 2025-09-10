// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthLoginResponseModel {

@JsonKey(name: "status") int get status;@JsonKey(name: "message") String get message;@JsonKey(name: "data") LoginResponseData get data;
/// Create a copy of AuthLoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthLoginResponseModelCopyWith<AuthLoginResponseModel> get copyWith => _$AuthLoginResponseModelCopyWithImpl<AuthLoginResponseModel>(this as AuthLoginResponseModel, _$identity);

  /// Serializes this AuthLoginResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthLoginResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'AuthLoginResponseModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $AuthLoginResponseModelCopyWith<$Res>  {
  factory $AuthLoginResponseModelCopyWith(AuthLoginResponseModel value, $Res Function(AuthLoginResponseModel) _then) = _$AuthLoginResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") int status,@JsonKey(name: "message") String message,@JsonKey(name: "data") LoginResponseData data
});


$LoginResponseDataCopyWith<$Res> get data;

}
/// @nodoc
class _$AuthLoginResponseModelCopyWithImpl<$Res>
    implements $AuthLoginResponseModelCopyWith<$Res> {
  _$AuthLoginResponseModelCopyWithImpl(this._self, this._then);

  final AuthLoginResponseModel _self;
  final $Res Function(AuthLoginResponseModel) _then;

/// Create a copy of AuthLoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoginResponseData,
  ));
}
/// Create a copy of AuthLoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseDataCopyWith<$Res> get data {
  
  return $LoginResponseDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthLoginResponseModel].
extension AuthLoginResponseModelPatterns on AuthLoginResponseModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthLoginResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthLoginResponseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthLoginResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthLoginResponseModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthLoginResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthLoginResponseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  int status, @JsonKey(name: "message")  String message, @JsonKey(name: "data")  LoginResponseData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthLoginResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  int status, @JsonKey(name: "message")  String message, @JsonKey(name: "data")  LoginResponseData data)  $default,) {final _that = this;
switch (_that) {
case _AuthLoginResponseModel():
return $default(_that.status,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  int status, @JsonKey(name: "message")  String message, @JsonKey(name: "data")  LoginResponseData data)?  $default,) {final _that = this;
switch (_that) {
case _AuthLoginResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthLoginResponseModel implements AuthLoginResponseModel {
  const _AuthLoginResponseModel({@JsonKey(name: "status") required this.status, @JsonKey(name: "message") required this.message, @JsonKey(name: "data") required this.data});
  factory _AuthLoginResponseModel.fromJson(Map<String, dynamic> json) => _$AuthLoginResponseModelFromJson(json);

@override@JsonKey(name: "status") final  int status;
@override@JsonKey(name: "message") final  String message;
@override@JsonKey(name: "data") final  LoginResponseData data;

/// Create a copy of AuthLoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthLoginResponseModelCopyWith<_AuthLoginResponseModel> get copyWith => __$AuthLoginResponseModelCopyWithImpl<_AuthLoginResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthLoginResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthLoginResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'AuthLoginResponseModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AuthLoginResponseModelCopyWith<$Res> implements $AuthLoginResponseModelCopyWith<$Res> {
  factory _$AuthLoginResponseModelCopyWith(_AuthLoginResponseModel value, $Res Function(_AuthLoginResponseModel) _then) = __$AuthLoginResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") int status,@JsonKey(name: "message") String message,@JsonKey(name: "data") LoginResponseData data
});


@override $LoginResponseDataCopyWith<$Res> get data;

}
/// @nodoc
class __$AuthLoginResponseModelCopyWithImpl<$Res>
    implements _$AuthLoginResponseModelCopyWith<$Res> {
  __$AuthLoginResponseModelCopyWithImpl(this._self, this._then);

  final _AuthLoginResponseModel _self;
  final $Res Function(_AuthLoginResponseModel) _then;

/// Create a copy of AuthLoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = null,}) {
  return _then(_AuthLoginResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoginResponseData,
  ));
}

/// Create a copy of AuthLoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseDataCopyWith<$Res> get data {
  
  return $LoginResponseDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$LoginResponseData {

@JsonKey(name: "token") String get token;@JsonKey(name: "user") User get user;
/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseDataCopyWith<LoginResponseData> get copyWith => _$LoginResponseDataCopyWithImpl<LoginResponseData>(this as LoginResponseData, _$identity);

  /// Serializes this LoginResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseData&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user);

@override
String toString() {
  return 'LoginResponseData(token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class $LoginResponseDataCopyWith<$Res>  {
  factory $LoginResponseDataCopyWith(LoginResponseData value, $Res Function(LoginResponseData) _then) = _$LoginResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "token") String token,@JsonKey(name: "user") User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$LoginResponseDataCopyWithImpl<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  _$LoginResponseDataCopyWithImpl(this._self, this._then);

  final LoginResponseData _self;
  final $Res Function(LoginResponseData) _then;

/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? user = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}
/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponseData].
extension LoginResponseDataPatterns on LoginResponseData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponseData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponseData value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponseData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponseData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "token")  String token, @JsonKey(name: "user")  User user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponseData() when $default != null:
return $default(_that.token,_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "token")  String token, @JsonKey(name: "user")  User user)  $default,) {final _that = this;
switch (_that) {
case _LoginResponseData():
return $default(_that.token,_that.user);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "token")  String token, @JsonKey(name: "user")  User user)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponseData() when $default != null:
return $default(_that.token,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponseData implements LoginResponseData {
  const _LoginResponseData({@JsonKey(name: "token") required this.token, @JsonKey(name: "user") required this.user});
  factory _LoginResponseData.fromJson(Map<String, dynamic> json) => _$LoginResponseDataFromJson(json);

@override@JsonKey(name: "token") final  String token;
@override@JsonKey(name: "user") final  User user;

/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseDataCopyWith<_LoginResponseData> get copyWith => __$LoginResponseDataCopyWithImpl<_LoginResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseData&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user);

@override
String toString() {
  return 'LoginResponseData(token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseDataCopyWith<$Res> implements $LoginResponseDataCopyWith<$Res> {
  factory _$LoginResponseDataCopyWith(_LoginResponseData value, $Res Function(_LoginResponseData) _then) = __$LoginResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "token") String token,@JsonKey(name: "user") User user
});


@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class __$LoginResponseDataCopyWithImpl<$Res>
    implements _$LoginResponseDataCopyWith<$Res> {
  __$LoginResponseDataCopyWithImpl(this._self, this._then);

  final _LoginResponseData _self;
  final $Res Function(_LoginResponseData) _then;

/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? user = null,}) {
  return _then(_LoginResponseData(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$User {

@JsonKey(name: "id") String get id;@JsonKey(name: "email") String get email;@JsonKey(name: "username") String get username;@JsonKey(name: "name") String get name;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,username,name);

@override
String toString() {
  return 'User(id: $id, email: $email, username: $username, name: $name)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String id,@JsonKey(name: "email") String email,@JsonKey(name: "username") String username,@JsonKey(name: "name") String name
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? username = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String id, @JsonKey(name: "email")  String email, @JsonKey(name: "username")  String username, @JsonKey(name: "name")  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String id, @JsonKey(name: "email")  String email, @JsonKey(name: "username")  String username, @JsonKey(name: "name")  String name)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.email,_that.username,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String id, @JsonKey(name: "email")  String email, @JsonKey(name: "username")  String username, @JsonKey(name: "name")  String name)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({@JsonKey(name: "id") required this.id, @JsonKey(name: "email") required this.email, @JsonKey(name: "username") required this.username, @JsonKey(name: "name") required this.name});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: "id") final  String id;
@override@JsonKey(name: "email") final  String email;
@override@JsonKey(name: "username") final  String username;
@override@JsonKey(name: "name") final  String name;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,username,name);

@override
String toString() {
  return 'User(id: $id, email: $email, username: $username, name: $name)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String id,@JsonKey(name: "email") String email,@JsonKey(name: "username") String username,@JsonKey(name: "name") String name
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? username = null,Object? name = null,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
