import "package:tradeful_app/services/api_client.dart";

class AuthService {
  final ApiClient apiClient;

  AuthService({required this.apiClient});

  Future<dynamic> loginWithEmail(String email, String password) {
    return apiClient.request(
      endpoint: '/api/auth/login-email',
      method: 'POST',
      data: {'email': email, 'password': password},
    );
  }

  Future<dynamic> registerHomeowner(Map<String, dynamic> homeownerData) {
    return apiClient.request(
      endpoint: '/api/auth/homeowner/register-homeowner',
      method: 'POST',
      data: homeownerData,
    );
  }
}
