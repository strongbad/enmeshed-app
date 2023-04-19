import '../../value_hints.dart';
import 'proprietary_attribute_value.dart';

class ProprietaryURL extends ProprietaryAttributeValue {
  final String value;

  const ProprietaryURL({
    required super.title,
    super.description,
    super.valueHintsOverride,
    required this.value,
  });

  factory ProprietaryURL.fromJson(Map json) => ProprietaryURL(
        title: json['title'],
        description: json['description'],
        valueHintsOverride: json['valueHintsOverride'] != null ? ValueHints.fromJson(json['valueHintsOverride']) : null,
        value: json['value'],
      );

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        '@type': 'ProprietaryURL',
        'value': value,
      };

  @override
  String toString() => 'ProprietaryURL(value: $value)';

  @override
  List<Object?> get props => [super.props, value];
}
