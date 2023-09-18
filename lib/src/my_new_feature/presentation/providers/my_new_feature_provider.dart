import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/my_new_feature.dart';

final myNewFeatureProvider = Provider.autoDispose<MyNewFeature>((ref) {
  return MyNewFeature();
});
