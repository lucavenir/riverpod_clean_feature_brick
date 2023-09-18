import 'package:mason/mason.dart';

import 'pre/choose_sources.dart';
import 'pre/choose_state.dart';
import 'pre/valid_name.dart';

void run(HookContext context) {
  // Asserts this name can be used (e.g. no special characters)
  final name = context.vars['name'] as String;
  assertValidName(name);

  // Codegen pre-process
  final usesRiverpodCodegen = context.vars['codegen'] as bool;
  final usesFreezedCodegen = context.vars['freezed'] as bool;
  context.vars['anyCodegen'] = usesRiverpodCodegen || usesFreezedCodegen;

  chooseSources(context);
  chooseState(context);
}
