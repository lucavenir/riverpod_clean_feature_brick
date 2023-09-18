import '../../domain/entities/my_new_feature.dart';
import '../../domain/repositories/my_new_feature_repository_interface.dart';

final class MyNewFeatureRepository implements MyNewFeatureRepositoryInterface {
  const MyNewFeatureRepository(
    this.remote,
  );

  final MyNewFeatureRemoteSource remote;

  MyNewFeature getMyNewFeature() {
    throw UnimplementedError("TODO: add repository logic in here");
  }
}
