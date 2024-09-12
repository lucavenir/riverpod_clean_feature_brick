{{#freezed}}
import 'package:freezed_annotation/freezed_annotation.dart';
part '{{name.snakeCase()}}.model.freezed.dart';
@freezed
class {{name.pascalCase()}} with _${{name.pascalCase()}} {
  const factory {{name.pascalCase()}}(
    // TODO add params here
  ) = _{{name.pascalCase()}};
} 
{{/freezed}}
{{^freezed}}
class {{name.pascalCase()}} {
  // TODO fill me
}
{{/freezed}}
