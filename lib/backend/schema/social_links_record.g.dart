// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_links_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SocialLinksRecord> _$socialLinksRecordSerializer =
    new _$SocialLinksRecordSerializer();

class _$SocialLinksRecordSerializer
    implements StructuredSerializer<SocialLinksRecord> {
  @override
  final Iterable<Type> types = const [SocialLinksRecord, _$SocialLinksRecord];
  @override
  final String wireName = 'SocialLinksRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SocialLinksRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  SocialLinksRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SocialLinksRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$SocialLinksRecord extends SocialLinksRecord {
  @override
  final String? name;
  @override
  final String? icon;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SocialLinksRecord(
          [void Function(SocialLinksRecordBuilder)? updates]) =>
      (new SocialLinksRecordBuilder()..update(updates))._build();

  _$SocialLinksRecord._({this.name, this.icon, this.ffRef}) : super._();

  @override
  SocialLinksRecord rebuild(void Function(SocialLinksRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialLinksRecordBuilder toBuilder() =>
      new SocialLinksRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialLinksRecord &&
        name == other.name &&
        icon == other.icon &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), icon.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialLinksRecord')
          ..add('name', name)
          ..add('icon', icon)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SocialLinksRecordBuilder
    implements Builder<SocialLinksRecord, SocialLinksRecordBuilder> {
  _$SocialLinksRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SocialLinksRecordBuilder() {
    SocialLinksRecord._initializeBuilder(this);
  }

  SocialLinksRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _icon = $v.icon;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialLinksRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SocialLinksRecord;
  }

  @override
  void update(void Function(SocialLinksRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialLinksRecord build() => _build();

  _$SocialLinksRecord _build() {
    final _$result =
        _$v ?? new _$SocialLinksRecord._(name: name, icon: icon, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
