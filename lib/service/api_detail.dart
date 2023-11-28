import 'package:dio/dio.dart';

class APISdetail {
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> fetchDetailData(String key) async {
    final response = await _dio.get('https://the-lazy-media-api.vercel.app/api/detail/$key');
    
    if (response.statusCode == 200) {
      Map<String, dynamic> data = Map<String, dynamic>.from(response.data['results']);
      return data;
    } else {
      throw Exception('Failed to load detail data');
    }
  }
}
