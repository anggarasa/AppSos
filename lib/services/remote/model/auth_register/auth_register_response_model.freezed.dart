// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_register_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthRegisterResponseModel {

@JsonKey(name: "token") String get token;@JsonKey(name: "user") User get user;
/// Create a copy of AuthRegisterResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthRegisterResponseModelCopyWith<AuthRegisterResponseModel> get copyWith => _$AuthRegisterResponseModelCopyWithImpl<AuthRegisterResponseModel>(this as AuthRegisterResponseModel, _$identity);

  /// Serializes this AuthRegisterResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthRegisterResponseModel&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user);

@override
String toString() {
  return 'AuthRegisterResponseModel(token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class $AuthRegisterResponseModelCopyWith<$Res>  {
  factory $AuthRegisterResponseModelCopyWith(AuthRegisterResponseModel value, $Res Function(AuthRegisterResponseModel) _then) = _$AuthRegisterResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "token") String token,@JsonKey(name: "user") User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$AuthRegisterResponseModelCopyWithImpl<$Res>
    implements $AuthRegisterResponseModelCopyWith<$Res> {
  _$AuthRegisterResponseModelCopyWithImpl(this._self, this._then);

  final AuthRegisterResponseModel _self;
  final $Res Function(AuthRegisterResponseModel) _then;

/// Create a copy of AuthRegisterResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? user = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}
/// Create a copy of AuthRegisterResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthRegisterResponseModel].
extension AuthRegisterResponseModelPatterns on AuthRegisterResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthRegisterResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthRegisterResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthRegisterResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthRegisterResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthRegisterResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthRegisterResponseModel() when $default != null:
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
case _AuthRegisterResponseModel() when $default != null:
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
case _AuthRegisterResponseModel():
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
case _AuthRegisterResponseModel() when $default != null:
return $default(_that.token,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthRegisterResponseModel implements AuthRegisterResponseModel {
  const _AuthRegisterResponseModel({@JsonKey(name: "token") required this.token, @JsonKey(name: "user") required this.user});
  factory _AuthRegisterResponseModel.fromJson(Map<String, dynamic> json) => _$AuthRegisterResponseModelFromJson(json);

@override@JsonKey(name: "token") final  String token;
@override@JsonKey(name: "user") final  User user;

/// Create a copy of AuthRegisterResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthRegisterResponseModelCopyWith<_AuthRegisterResponseModel> get copyWith => __$AuthRegisterResponseModelCopyWithImpl<_AuthRegisterResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthRegisterResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthRegisterResponseModel&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user);

@override
String toString() {
  return 'AuthRegisterResponseModel(token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class _$AuthRegisterResponseModelCopyWith<$Res> implements $AuthRegisterResponseModelCopyWith<$Res> {
  factory _$AuthRegisterResponseModelCopyWith(_AuthRegisterResponseModel value, $Res Function(_AuthRegisterResponseModel) _then) = __$AuthRegisterResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "token") String token,@JsonKey(name: "user") User user
});


@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class __$AuthRegisterResponseModelCopyWithImpl<$Res>
    implements _$AuthRegisterResponseModelCopyWith<$Res> {
  __$AuthRegisterResponseModelCopyWithImpl(this._self, this._then);

  final _AuthRegisterResponseModel _self;
  final $Res Function(_AuthRegisterResponseModel) _then;

/// Create a copy of AuthRegisterResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? user = null,}) {
  return _then(_AuthRegisterResponseModel(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of AuthRegisterResponseModel
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
