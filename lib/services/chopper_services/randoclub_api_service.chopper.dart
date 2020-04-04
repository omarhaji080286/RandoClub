// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'randoclub_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$RandoClubApiService extends RandoClubApiService {
  _$RandoClubApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = RandoClubApiService;

  @override
  Future<Response> addUser(String jsonData) {
    final $url = '/add_user.php';
    final $parts = <PartValue>[PartValue<String>('json_data', jsonData)];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response> updateUser(String jsonData) {
    final $url = '/update_user.php';
    final $parts = <PartValue>[PartValue<String>('json_data', jsonData)];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response> getInitialLoadData(String jsonData) {
    final $url = '/initial_load.php';
    final $parts = <PartValue>[PartValue<String>('json_data', jsonData)];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<dynamic, dynamic>($request);
  }
}
