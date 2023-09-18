import 'package:mason/mason.dart';

void chooseState(HookContext context) {
  final state = context.vars['state'] as String;
  switch (state) {
    case 'provider' || 'both':
      context.vars['provider'] = true;
    case 'controller' || 'both':
      context.vars['controller'] = true;
  }
  context.vars['provider'] ??= false;
  context.vars['controller'] ??= false;
}
