
{{^codegen}}
{{#hooks}}
import 'package:hooks_riverpod/hooks_riverpod.dart';
{{/hooks}}
{{^hooks}}
import 'package:flutter_riverpod/flutter_riverpod.dart';
{{/hooks}}
{{/codegen}}

import '../entities/{{name.snakeCase()}}.dart';
import '../../data/repositories/{{name.snakeCase()}}_repository.dart';

{{#remote}}
import '../../data/sources/{{name.snakeCase()}}_remote_source.dart';
{{/remote}}
{{#local}}
import '../../data/sources/{{name.snakeCase()}}_local_source.dart';
{{/local}}

{{#codegen}}
import 'package:riverpod_annotation/riverpod_annotation.dart';
part '{{name.snakeCase()}}_repository_interface.g.dart';
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
  {{name.pascalCase()}} get{{name.pascalCase()}}();
}
