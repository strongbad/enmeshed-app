import 'identity_attribute_value.dart';

class ZipCodeAttributeValue extends IdentityAttributeValue {
  final String value;

  const ZipCodeAttributeValue({
    required this.value,
  });

  factory ZipCodeAttributeValue.fromJson(Map json) => ZipCodeAttributeValue(
        value: json['value'],
      );

  @override
  Map<String, dynamic> toJson() => {
        '@type': 'ZipCode',
        'value': value,
      };

  @override
  String toString() => 'ZipCodeAttributeValue(value: $value)';

  @override
  List<Object?> get props => [value];
}
