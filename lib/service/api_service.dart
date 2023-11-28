import 'package:dio/dio.dart';

class APIService {
  final Dio _dio = Dio();

  Future<List<Map<String, dynamic>>> fetchData() async {
    try {
      final response = await _dio.get('https://the-lazy-media-api.vercel.app/api/games/e-sport/?page=1');
      if (response.statusCode == 200) {
        List<Map<String, dynamic>> data = (response.data as List).cast<Map<String, dynamic>>();
        return data;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}
