import 'package:mason/mason.dart';

import 'execute_and_log.dart';
import 'post/run_build_runner.dart';

void run(HookContext context) {
  final anyCodegen = context.vars['anyCodegen'] as bool;
  if (!anyCodegen) return;
  executeAndLog(context: context, cb: runBuildRunner, message: 'Running `build_runner`..');
}
