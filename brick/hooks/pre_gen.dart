import 'package:mason/mason.dart';

import 'pre/choose_state.dart';
import 'pre/get_project_info.dart';
import 'pre/valid_name.dart';

Future<void> run(HookContext context) async {
  // Asserts this name can be used (e.g. no special characters)
  final name = context.vars['name'] as String;
  assertValidName(name);
  context.vars['name'] = name.snakeCase;

  chooseState(context);
  await getProjectInfo(context);
}
