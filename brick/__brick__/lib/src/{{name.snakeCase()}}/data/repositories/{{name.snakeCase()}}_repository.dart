{{#hooks}}
import 'package:hooks_riverpod/hooks_riverpod.dart';
{{/hooks}}
{{^hooks}}
import 'package:flutter_riverpod/flutter_riverpod.dart';
{{/hooks}}

import '../../domain/entities/{{name.snakeCase()}}.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository_interface.dart';

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
    remote: remote,
    {{/remote}}
    {{#local}}
    local: local,
    {{/local}}
  );
}
{{^codegen}}
);
{{/codegen}}


final class {{name.pascalCase()}}Repository{
  const {{name.pascalCase()}}Repository(
    {{#remote}}
    this.remote,
    {{/remote}}
    {{#local}}
    this.local,
    {{/local}}
  );
  {{#remote}}
  final {{name.camelCase()}}RemoteSource remote;
  {{/remote}}
  {{#local}}
  final {{name.camelCase()}}LocalSource local;
  {{/local}}

  {{name.pascalCase()}} get{{name.pascalCase()}}() {
    throw UnimplementedError("TODO: add repository logic in here");
  }
}
