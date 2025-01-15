// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserModel>? user) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserModel>? user)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserModel>? user)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserEvent value) initial,
    required TResult Function(AddUserEvent value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialUserEvent value)? initial,
    TResult? Function(AddUserEvent value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserEvent value)? initial,
    TResult Function(AddUserEvent value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialUserEventImplCopyWith<$Res> {
  factory _$$InitialUserEventImplCopyWith(_$InitialUserEventImpl value,
          $Res Function(_$InitialUserEventImpl) then) =
      __$$InitialUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$InitialUserEventImpl>
    implements _$$InitialUserEventImplCopyWith<$Res> {
  __$$InitialUserEventImplCopyWithImpl(_$InitialUserEventImpl _value,
      $Res Function(_$InitialUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialUserEventImpl implements InitialUserEvent {
  const _$InitialUserEventImpl();

  @override
  String toString() {
    return 'UserEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserModel>? user) add,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserModel>? user)? add,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserModel>? user)? add,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserEvent value) initial,
    required TResult Function(AddUserEvent value) add,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialUserEvent value)? initial,
    TResult? Function(AddUserEvent value)? add,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserEvent value)? initial,
    TResult Function(AddUserEvent value)? add,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialUserEvent implements UserEvent {
  const factory InitialUserEvent() = _$InitialUserEventImpl;
}

/// @nodoc
abstract class _$$AddUserEventImplCopyWith<$Res> {
  factory _$$AddUserEventImplCopyWith(
          _$AddUserEventImpl value, $Res Function(_$AddUserEventImpl) then) =
      __$$AddUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserModel>? user});
}

/// @nodoc
class __$$AddUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$AddUserEventImpl>
    implements _$$AddUserEventImplCopyWith<$Res> {
  __$$AddUserEventImplCopyWithImpl(
      _$AddUserEventImpl _value, $Res Function(_$AddUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AddUserEventImpl(
      user: freezed == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ));
  }
}

/// @nodoc

class _$AddUserEventImpl implements AddUserEvent {
  const _$AddUserEventImpl({required final List<UserModel>? user})
      : _user = user;

  final List<UserModel>? _user;
  @override
  List<UserModel>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserEvent.add(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserEventImpl &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserEventImplCopyWith<_$AddUserEventImpl> get copyWith =>
      __$$AddUserEventImplCopyWithImpl<_$AddUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserModel>? user) add,
  }) {
    return add(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserModel>? user)? add,
  }) {
    return add?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserModel>? user)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserEvent value) initial,
    required TResult Function(AddUserEvent value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialUserEvent value)? initial,
    TResult? Function(AddUserEvent value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserEvent value)? initial,
    TResult Function(AddUserEvent value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class AddUserEvent implements UserEvent {
  const factory AddUserEvent({required final List<UserModel>? user}) =
      _$AddUserEventImpl;

  List<UserModel>? get user;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserEventImplCopyWith<_$AddUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
