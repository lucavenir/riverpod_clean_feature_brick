
import '../../domain/entities/{{name.snakeCase()}}.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository_interface.dart';
{{#local}}
import '../sources/{{name.snakeCase()}}_local_source.dart';
{{/local}}
{{#remote}}
import '../sources/{{name.snakeCase()}}_remote_source.dart';
{{/remote}}


final class {{name.pascalCase()}}Repository implements {{name.pascalCase()}}RepositoryInterface {
  const {{name.pascalCase()}}Repository(
    {{#remote}}
    this.remote,
    {{/remote}}
    {{#local}}
    this.local,
    {{/local}}
  );
  {{#remote}}
  final {{name.pascalCase()}}RemoteSource remote;
  {{/remote}}
  {{#local}}
  final {{name.pascalCase()}}LocalSource local;
  {{/local}}

  {{name.pascalCase()}} get{{name.pascalCase()}}() {
    throw UnimplementedError("TODO: add repository logic in here");
  }
}
