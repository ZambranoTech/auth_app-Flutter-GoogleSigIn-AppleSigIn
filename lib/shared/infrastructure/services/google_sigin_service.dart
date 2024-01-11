import 'package:auth_app/config/constants/environment.dart';
import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService {

  static GoogleSignIn _googleSignIn() {

    const List<String> scopes = <String>[
      'email',
    ];

    return GoogleSignIn(
      scopes: scopes,
    );

  }

  static Future<GoogleSignInAccount?> signInWithGoogle() async {

    try {
      final account = await _googleSignIn().signIn();

      if (account == null) return null;
 
      final googleKey = await account.authentication;

      final response = await Dio().post('${Environment.apiUrl}/google', 
       data: {
        'token': googleKey.idToken
       },
       options: Options(
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
       ),
      );

      print(response.data);

      return account;

    } catch (e) {
      print('Error en Google Sign In');
      print(e);
      return null;
    }

  }

  static Future signOut() async {
    await _googleSignIn().signOut();
  }




}