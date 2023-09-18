import 'package:mason/mason.dart';

void chooseState(HookContext context) {
  final usesState = context.vars['state'] as bool;
  if (!usesState) return;

  const providerPrompt = 'Does this feature use providers?';
  final usesProvider = context.logger.confirm(providerPrompt, defaultValue: true);
  context.vars['usesProvider'] = usesProvider;
  const controllerPrompt = 'Does this feature use controllers (aka notifiers)?';
  final usesControllers = context.logger.confirm(controllerPrompt, defaultValue: true);
  context.vars['usesControllers'] = usesControllers;
}
