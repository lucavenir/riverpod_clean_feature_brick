import 'package:hooks_riverpod/hooks_riverpod.dart';

final myNewFeatureRemoteSourceProvider = Provider.autoDispose<MyNewFeatureRemoteSource>((ref) {
  throw UnimplementedError("TODO: inject here your remote client (e.g. dioProvider)");
});

final class MyNewFeatureRemoteSource {
  const MyNewFeatureRemoteSource(this.remoteClient);
  final Never remoteClient;

  Never getMyNewFeature() {
    throw UnimplementedError("TODO: use `remoteClient` to fetch data");
  }
}
