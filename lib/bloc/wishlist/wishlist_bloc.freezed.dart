// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(WishEntity wishlistEntity) onCreate,
    required TResult Function(WishEntity wishlistEntity) onUpdate,
    required TResult Function(WishEntity wishlistEntity) onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WishEntity wishlistEntity)? onCreate,
    TResult? Function(WishEntity wishlistEntity)? onUpdate,
    TResult? Function(WishEntity wishlistEntity)? onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WishEntity wishlistEntity)? onCreate,
    TResult Function(WishEntity wishlistEntity)? onUpdate,
    TResult Function(WishEntity wishlistEntity)? onDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnCreate value) onCreate,
    required TResult Function(_OnUpdate value) onUpdate,
    required TResult Function(_OnDelete value) onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnCreate value)? onCreate,
    TResult? Function(_OnUpdate value)? onUpdate,
    TResult? Function(_OnDelete value)? onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnCreate value)? onCreate,
    TResult Function(_OnUpdate value)? onUpdate,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistEventCopyWith<$Res> {
  factory $WishlistEventCopyWith(
          WishlistEvent value, $Res Function(WishlistEvent) then) =
      _$WishlistEventCopyWithImpl<$Res, WishlistEvent>;
}

/// @nodoc
class _$WishlistEventCopyWithImpl<$Res, $Val extends WishlistEvent>
    implements $WishlistEventCopyWith<$Res> {
  _$WishlistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'WishlistEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(WishEntity wishlistEntity) onCreate,
    required TResult Function(WishEntity wishlistEntity) onUpdate,
    required TResult Function(WishEntity wishlistEntity) onDelete,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WishEntity wishlistEntity)? onCreate,
    TResult? Function(WishEntity wishlistEntity)? onUpdate,
    TResult? Function(WishEntity wishlistEntity)? onDelete,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WishEntity wishlistEntity)? onCreate,
    TResult Function(WishEntity wishlistEntity)? onUpdate,
    TResult Function(WishEntity wishlistEntity)? onDelete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnCreate value) onCreate,
    required TResult Function(_OnUpdate value) onUpdate,
    required TResult Function(_OnDelete value) onDelete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnCreate value)? onCreate,
    TResult? Function(_OnUpdate value)? onUpdate,
    TResult? Function(_OnDelete value)? onDelete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnCreate value)? onCreate,
    TResult Function(_OnUpdate value)? onUpdate,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WishlistEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_OnCreateCopyWith<$Res> {
  factory _$$_OnCreateCopyWith(
          _$_OnCreate value, $Res Function(_$_OnCreate) then) =
      __$$_OnCreateCopyWithImpl<$Res>;
  @useResult
  $Res call({WishEntity wishlistEntity});
}

/// @nodoc
class __$$_OnCreateCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$_OnCreate>
    implements _$$_OnCreateCopyWith<$Res> {
  __$$_OnCreateCopyWithImpl(
      _$_OnCreate _value, $Res Function(_$_OnCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlistEntity = null,
  }) {
    return _then(_$_OnCreate(
      null == wishlistEntity
          ? _value.wishlistEntity
          : wishlistEntity // ignore: cast_nullable_to_non_nullable
              as WishEntity,
    ));
  }
}

/// @nodoc

class _$_OnCreate implements _OnCreate {
  const _$_OnCreate(this.wishlistEntity);

  @override
  final WishEntity wishlistEntity;

  @override
  String toString() {
    return 'WishlistEvent.onCreate(wishlistEntity: $wishlistEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnCreate &&
            (identical(other.wishlistEntity, wishlistEntity) ||
                other.wishlistEntity == wishlistEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishlistEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnCreateCopyWith<_$_OnCreate> get copyWith =>
      __$$_OnCreateCopyWithImpl<_$_OnCreate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(WishEntity wishlistEntity) onCreate,
    required TResult Function(WishEntity wishlistEntity) onUpdate,
    required TResult Function(WishEntity wishlistEntity) onDelete,
  }) {
    return onCreate(wishlistEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WishEntity wishlistEntity)? onCreate,
    TResult? Function(WishEntity wishlistEntity)? onUpdate,
    TResult? Function(WishEntity wishlistEntity)? onDelete,
  }) {
    return onCreate?.call(wishlistEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WishEntity wishlistEntity)? onCreate,
    TResult Function(WishEntity wishlistEntity)? onUpdate,
    TResult Function(WishEntity wishlistEntity)? onDelete,
    required TResult orElse(),
  }) {
    if (onCreate != null) {
      return onCreate(wishlistEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnCreate value) onCreate,
    required TResult Function(_OnUpdate value) onUpdate,
    required TResult Function(_OnDelete value) onDelete,
  }) {
    return onCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnCreate value)? onCreate,
    TResult? Function(_OnUpdate value)? onUpdate,
    TResult? Function(_OnDelete value)? onDelete,
  }) {
    return onCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnCreate value)? onCreate,
    TResult Function(_OnUpdate value)? onUpdate,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onCreate != null) {
      return onCreate(this);
    }
    return orElse();
  }
}

abstract class _OnCreate implements WishlistEvent {
  const factory _OnCreate(final WishEntity wishlistEntity) = _$_OnCreate;

  WishEntity get wishlistEntity;
  @JsonKey(ignore: true)
  _$$_OnCreateCopyWith<_$_OnCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnUpdateCopyWith<$Res> {
  factory _$$_OnUpdateCopyWith(
          _$_OnUpdate value, $Res Function(_$_OnUpdate) then) =
      __$$_OnUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({WishEntity wishlistEntity});
}

/// @nodoc
class __$$_OnUpdateCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$_OnUpdate>
    implements _$$_OnUpdateCopyWith<$Res> {
  __$$_OnUpdateCopyWithImpl(
      _$_OnUpdate _value, $Res Function(_$_OnUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlistEntity = null,
  }) {
    return _then(_$_OnUpdate(
      null == wishlistEntity
          ? _value.wishlistEntity
          : wishlistEntity // ignore: cast_nullable_to_non_nullable
              as WishEntity,
    ));
  }
}

/// @nodoc

class _$_OnUpdate implements _OnUpdate {
  const _$_OnUpdate(this.wishlistEntity);

  @override
  final WishEntity wishlistEntity;

  @override
  String toString() {
    return 'WishlistEvent.onUpdate(wishlistEntity: $wishlistEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnUpdate &&
            (identical(other.wishlistEntity, wishlistEntity) ||
                other.wishlistEntity == wishlistEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishlistEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnUpdateCopyWith<_$_OnUpdate> get copyWith =>
      __$$_OnUpdateCopyWithImpl<_$_OnUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(WishEntity wishlistEntity) onCreate,
    required TResult Function(WishEntity wishlistEntity) onUpdate,
    required TResult Function(WishEntity wishlistEntity) onDelete,
  }) {
    return onUpdate(wishlistEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WishEntity wishlistEntity)? onCreate,
    TResult? Function(WishEntity wishlistEntity)? onUpdate,
    TResult? Function(WishEntity wishlistEntity)? onDelete,
  }) {
    return onUpdate?.call(wishlistEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WishEntity wishlistEntity)? onCreate,
    TResult Function(WishEntity wishlistEntity)? onUpdate,
    TResult Function(WishEntity wishlistEntity)? onDelete,
    required TResult orElse(),
  }) {
    if (onUpdate != null) {
      return onUpdate(wishlistEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnCreate value) onCreate,
    required TResult Function(_OnUpdate value) onUpdate,
    required TResult Function(_OnDelete value) onDelete,
  }) {
    return onUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnCreate value)? onCreate,
    TResult? Function(_OnUpdate value)? onUpdate,
    TResult? Function(_OnDelete value)? onDelete,
  }) {
    return onUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnCreate value)? onCreate,
    TResult Function(_OnUpdate value)? onUpdate,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onUpdate != null) {
      return onUpdate(this);
    }
    return orElse();
  }
}

abstract class _OnUpdate implements WishlistEvent {
  const factory _OnUpdate(final WishEntity wishlistEntity) = _$_OnUpdate;

  WishEntity get wishlistEntity;
  @JsonKey(ignore: true)
  _$$_OnUpdateCopyWith<_$_OnUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnDeleteCopyWith<$Res> {
  factory _$$_OnDeleteCopyWith(
          _$_OnDelete value, $Res Function(_$_OnDelete) then) =
      __$$_OnDeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({WishEntity wishlistEntity});
}

/// @nodoc
class __$$_OnDeleteCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$_OnDelete>
    implements _$$_OnDeleteCopyWith<$Res> {
  __$$_OnDeleteCopyWithImpl(
      _$_OnDelete _value, $Res Function(_$_OnDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlistEntity = null,
  }) {
    return _then(_$_OnDelete(
      null == wishlistEntity
          ? _value.wishlistEntity
          : wishlistEntity // ignore: cast_nullable_to_non_nullable
              as WishEntity,
    ));
  }
}

/// @nodoc

class _$_OnDelete implements _OnDelete {
  const _$_OnDelete(this.wishlistEntity);

  @override
  final WishEntity wishlistEntity;

  @override
  String toString() {
    return 'WishlistEvent.onDelete(wishlistEntity: $wishlistEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnDelete &&
            (identical(other.wishlistEntity, wishlistEntity) ||
                other.wishlistEntity == wishlistEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wishlistEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnDeleteCopyWith<_$_OnDelete> get copyWith =>
      __$$_OnDeleteCopyWithImpl<_$_OnDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(WishEntity wishlistEntity) onCreate,
    required TResult Function(WishEntity wishlistEntity) onUpdate,
    required TResult Function(WishEntity wishlistEntity) onDelete,
  }) {
    return onDelete(wishlistEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WishEntity wishlistEntity)? onCreate,
    TResult? Function(WishEntity wishlistEntity)? onUpdate,
    TResult? Function(WishEntity wishlistEntity)? onDelete,
  }) {
    return onDelete?.call(wishlistEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WishEntity wishlistEntity)? onCreate,
    TResult Function(WishEntity wishlistEntity)? onUpdate,
    TResult Function(WishEntity wishlistEntity)? onDelete,
    required TResult orElse(),
  }) {
    if (onDelete != null) {
      return onDelete(wishlistEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnCreate value) onCreate,
    required TResult Function(_OnUpdate value) onUpdate,
    required TResult Function(_OnDelete value) onDelete,
  }) {
    return onDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnCreate value)? onCreate,
    TResult? Function(_OnUpdate value)? onUpdate,
    TResult? Function(_OnDelete value)? onDelete,
  }) {
    return onDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnCreate value)? onCreate,
    TResult Function(_OnUpdate value)? onUpdate,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onDelete != null) {
      return onDelete(this);
    }
    return orElse();
  }
}

abstract class _OnDelete implements WishlistEvent {
  const factory _OnDelete(final WishEntity wishlistEntity) = _$_OnDelete;

  WishEntity get wishlistEntity;
  @JsonKey(ignore: true)
  _$$_OnDeleteCopyWith<_$_OnDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishlistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishEntity> wishlist) loaded,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WishEntity> wishlist)? loaded,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishEntity> wishlist)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WishlistState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishEntity> wishlist) loaded,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WishEntity> wishlist)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishEntity> wishlist)? loaded,
    TResult Function(String? error)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WishlistState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'WishlistState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishEntity> wishlist) loaded,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WishEntity> wishlist)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishEntity> wishlist)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WishlistState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<WishEntity> wishlist});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlist = null,
  }) {
    return _then(_$_Loaded(
      null == wishlist
          ? _value._wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as List<WishEntity>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<WishEntity> wishlist) : _wishlist = wishlist;

  final List<WishEntity> _wishlist;
  @override
  List<WishEntity> get wishlist {
    if (_wishlist is EqualUnmodifiableListView) return _wishlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlist);
  }

  @override
  String toString() {
    return 'WishlistState.loaded(wishlist: $wishlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._wishlist, _wishlist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wishlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishEntity> wishlist) loaded,
    required TResult Function(String? error) error,
  }) {
    return loaded(wishlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WishEntity> wishlist)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return loaded?.call(wishlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishEntity> wishlist)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(wishlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements WishlistState {
  const factory _Loaded(final List<WishEntity> wishlist) = _$_Loaded;

  List<WishEntity> get wishlist;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'WishlistState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishEntity> wishlist) loaded,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WishEntity> wishlist)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishEntity> wishlist)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WishlistState {
  const factory _Error(final String? error) = _$_Error;

  String? get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
