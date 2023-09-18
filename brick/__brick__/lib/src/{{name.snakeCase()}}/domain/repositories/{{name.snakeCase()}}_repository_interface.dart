import '../entities/{{name.snakeCase()}}.dart';
{{#codegen}}
import 'package:riverpod_annotation/riverpod_annotation.dart';
part '{{name.snakeCase()}}_repository_interface.g.dart';
{{/codegen}}

{{^codegen}}
{{#hooks}}
import 'package:hooks_riverpod/hooks_riverpod.dart';
{{/hooks}}
{{^hooks}}
import 'package:flutter_riverpod/flutter_riverpod.dart';
{{/hooks}}
{{/codegen}}


{{#codegen}}
@riverpod
{{name.pascalCase()}}RepositoryInterface {{name.camelCase()}}Repository({{name.pascalCase()}}RepositoryRef ref) {
{{/codegen}}
{{^codegen}}
final {{name.camelCase()}}RepositoryProvider = Provider.autoDispose<{{name.pascalCase()}}RepositoryInterface>((ref) {
{{/codegen}}
  {{#remote}}
  final remote = ref.watch({{name.camelCase()}}RemoteSourceProvider);
  {{/remote}}
  {{#local}}
  final local = ref.watch({{name.camelCase()}}LocalSourceProvider);
  {{/local}}
  return {{name.pascalCase()}}Repository(
    {{#remote}}
    remote,
    {{/remote}}
    {{#local}}
    local,
    {{/local}}
  );
}
{{^codegen}}
);
{{/codegen}}


abstract interface class {{name.pascalCase()}}RepositoryInterface {
  const {{name.pascalCase()}}RepositoryInterface();

  {{name.pascalCase()}} get{{name.pascalCase()}}();
}
