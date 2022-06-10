import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';

part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  factory Photo(
      {@JsonKey(name: "height") int? height,
      @JsonKey(name: "html_attributions") List<String>? htmlAttributions,
      @JsonKey(name: "photo_reference") String? photoReference,
      @JsonKey(name: "width") int? width}) = _Photo;

  factory Photo.fromJson(Map<String, Object?> json) => _$PhotoFromJson(json);
}
