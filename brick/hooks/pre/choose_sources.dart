import 'package:mason/mason.dart';

void chooseSources(HookContext context) {
  final sources = context.vars['sources'] as String;
  switch (sources) {
    case 'remote' || 'both':
      context.vars['remoteSource'] = true;
    case 'local' || 'both':
      context.vars['localSource'] = true;
  }
  context.vars['remote'] ??= false;
  context.vars['local'] ??= false;
}
