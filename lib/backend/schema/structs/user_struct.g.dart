// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserStruct> _$userStructSerializer = new _$UserStructSerializer();

class _$UserStructSerializer implements StructuredSerializer<UserStruct> {
  @override
  final Iterable<Type> types = const [UserStruct, _$UserStruct];
  @override
  final String wireName = 'UserStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.userRef;
    if (value != null) {
      result
        ..add('user_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_ref':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$UserStruct extends UserStruct {
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final String? email;
  @override
  final String? image;
  @override
  final String? displayName;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$UserStruct([void Function(UserStructBuilder)? updates]) =>
      (new UserStructBuilder()..update(updates))._build();

  _$UserStruct._(
      {this.userRef,
      this.email,
      this.image,
      this.displayName,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'UserStruct', 'firestoreUtilData');
  }

  @override
  UserStruct rebuild(void Function(UserStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserStructBuilder toBuilder() => new UserStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserStruct &&
        userRef == other.userRef &&
        email == other.email &&
        image == other.image &&
        displayName == other.displayName &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, userRef.hashCode), email.hashCode), image.hashCode),
            displayName.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserStruct')
          ..add('userRef', userRef)
          ..add('email', email)
          ..add('image', image)
          ..add('displayName', displayName)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class UserStructBuilder implements Builder<UserStruct, UserStructBuilder> {
  _$UserStruct? _$v;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  UserStructBuilder() {
    UserStruct._initializeBuilder(this);
  }

  UserStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _email = $v.email;
      _image = $v.image;
      _displayName = $v.displayName;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserStruct;
  }

  @override
  void update(void Function(UserStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserStruct build() => _build();

  _$UserStruct _build() {
    final _$result = _$v ??
        new _$UserStruct._(
            userRef: userRef,
            email: email,
            image: image,
            displayName: displayName,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'UserStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
