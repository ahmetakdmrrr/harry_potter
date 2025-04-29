// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterDto {

 String get name; String get species; String get gender; String get house; String? get image;
/// Create a copy of CharacterDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterDtoCopyWith<CharacterDto> get copyWith => _$CharacterDtoCopyWithImpl<CharacterDto>(this as CharacterDto, _$identity);

  /// Serializes this CharacterDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterDto&&(identical(other.name, name) || other.name == name)&&(identical(other.species, species) || other.species == species)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.house, house) || other.house == house)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,species,gender,house,image);

@override
String toString() {
  return 'CharacterDto(name: $name, species: $species, gender: $gender, house: $house, image: $image)';
}


}

/// @nodoc
abstract mixin class $CharacterDtoCopyWith<$Res>  {
  factory $CharacterDtoCopyWith(CharacterDto value, $Res Function(CharacterDto) _then) = _$CharacterDtoCopyWithImpl;
@useResult
$Res call({
 String name, String species, String gender, String house, String? image
});




}
/// @nodoc
class _$CharacterDtoCopyWithImpl<$Res>
    implements $CharacterDtoCopyWith<$Res> {
  _$CharacterDtoCopyWithImpl(this._self, this._then);

  final CharacterDto _self;
  final $Res Function(CharacterDto) _then;

/// Create a copy of CharacterDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? species = null,Object? gender = null,Object? house = null,Object? image = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,house: null == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@JsonSerializable(createToJson: true)
class _CharacterDto implements CharacterDto {
  const _CharacterDto({required this.name, required this.species, required this.gender, required this.house, this.image});
  factory _CharacterDto.fromJson(Map<String, dynamic> json) => _$CharacterDtoFromJson(json);

@override final  String name;
@override final  String species;
@override final  String gender;
@override final  String house;
@override final  String? image;

/// Create a copy of CharacterDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterDtoCopyWith<_CharacterDto> get copyWith => __$CharacterDtoCopyWithImpl<_CharacterDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterDto&&(identical(other.name, name) || other.name == name)&&(identical(other.species, species) || other.species == species)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.house, house) || other.house == house)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,species,gender,house,image);

@override
String toString() {
  return 'CharacterDto(name: $name, species: $species, gender: $gender, house: $house, image: $image)';
}


}

/// @nodoc
abstract mixin class _$CharacterDtoCopyWith<$Res> implements $CharacterDtoCopyWith<$Res> {
  factory _$CharacterDtoCopyWith(_CharacterDto value, $Res Function(_CharacterDto) _then) = __$CharacterDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String species, String gender, String house, String? image
});




}
/// @nodoc
class __$CharacterDtoCopyWithImpl<$Res>
    implements _$CharacterDtoCopyWith<$Res> {
  __$CharacterDtoCopyWithImpl(this._self, this._then);

  final _CharacterDto _self;
  final $Res Function(_CharacterDto) _then;

/// Create a copy of CharacterDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? species = null,Object? gender = null,Object? house = null,Object? image = freezed,}) {
  return _then(_CharacterDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,house: null == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
