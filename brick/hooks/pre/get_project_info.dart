import 'dart:io' as io;

import 'package:mason/mason.dart';

Future<void> getProjectInfo(HookContext context) async {
  final pubspec = _getPubspec();
  final usesHooks = await _uses('hooks_riverpod', file: pubspec);
  context.vars['hooks'] = usesHooks;
  final usesCodegen = await _uses('riverpod_generator', file: pubspec);
  context.vars['codegen'] = usesCodegen;
  final usesFreezed = await _uses('freezed', file: pubspec);
  context.vars['freezed'] = usesFreezed;

  final anyCodegen = usesCodegen || usesFreezed;
  context.vars['anyCodegen'] = anyCodegen;
}

Future<bool> _uses(String input, {required io.File file}) async {
  final lines = await file.readAsLines();
  for (final line in lines) {
    if (line.contains(input)) return true;
  }
  return false;
}

io.File _getPubspec() {
  final isWindows = io.Platform.isWindows;
  try {
    return io.File.fromUri(Uri.file('pubspec.yaml', windows: isWindows));
  } on io.PathNotFoundException {
    throw const NoPubspecFoundException();
  }
}

class NoPubspecFoundException implements Exception {
  const NoPubspecFoundException();

  @override
  String toString() => 'No `pubspec.yaml` found. You must create a Flutter project first';
}
