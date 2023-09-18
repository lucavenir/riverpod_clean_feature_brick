import 'package:mason/mason.dart';

void chooseSources(HookContext context) {
  final sources = context.vars['sources'] as String;

  if (sources case 'remote' || 'both') context.vars['remote'] = true;
  if (sources case 'local' || 'both') context.vars['local'] = true;

  context.vars['remote'] ??= false;
  context.vars['local'] ??= false;
}
