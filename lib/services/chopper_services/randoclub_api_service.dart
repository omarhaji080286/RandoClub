import 'package:chopper/chopper.dart';
import 'package:randoclub/util/constants.dart';

part 'randoclub_api_service.chopper.dart';

@ChopperApi(baseUrl: '/')
abstract class RandoClubApiService extends ChopperService {
  @Post(path: 'add_user.php')
  @multipart
  Future<Response> addUser(
    @Part('json_data') String jsonData,
  );

  @Post(path: 'initial_load.php')
  @multipart
  Future<Response> getInitialLoadData(
    @Part('json_data') String jsonData,
  );

  static RandoClubApiService create() {
    final client = ChopperClient(
      baseUrl: Constants.WEB_SERVICES,
      services: [
        _$RandoClubApiService(),
      ],
      converter: JsonConverter(),
    );
    return _$RandoClubApiService(client);
  }
}
