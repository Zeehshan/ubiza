import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../../configs/apis/apis.dart';
import '../providers.dart';

class HttpApiProvider implements AuthApiProvider {
  @override
  Future appleLogin() async {
    try {
      final credentialAppleId = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final AuthCredential credential = OAuthProvider('apple.com').credential(
        accessToken: credentialAppleId.authorizationCode,
        idToken: credentialAppleId.identityToken,
      );
      FirebaseAuth auth = FirebaseAuth.instance;
      await auth.signInWithCredential(credential);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future fbLogin() async {
    try {
      final result = await FacebookAuth.instance.login();
      switch (result.status) {
        case LoginStatus.success:
          final accessToken = await FacebookAuth.instance.accessToken;

          AuthCredential credential =
              FacebookAuthProvider.credential(accessToken!.token);
          FirebaseAuth auth = FirebaseAuth.instance;
          await auth.signInWithCredential(credential);
          break;
        case LoginStatus.cancelled:
          throw result.message ?? '';
        default:
          throw result.message ?? '';
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> getAuthenticatedStatus() async {
    try {
      return FirebaseAuth.instance.currentUser?.uid != null;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future getAuthenticatedUser() async {
    try {
      final String? _uid = FirebaseAuth.instance.currentUser?.uid;
      if (_uid != null) {
        DocumentSnapshot documentSnapshot =
            await BackendApis.user.doc(_uid).get();
        // final user = UserModel.fromJson(documentSnapshot.data());
        return;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> gmailLogin({required String email}) {
    // TODO: implement gmailLogin
    throw UnimplementedError();
  }

  @override
  Future googleLogin() async {
    try {
      var googleSignIn = GoogleSignIn(scopes: [
        'email',
      ]);

      /// Need to disconnect or cannot login with another account.
      try {
        await googleSignIn.disconnect();
      } catch (_) {
        // ignore.
      }
      var res = await googleSignIn.signIn();
      if (res == null) {
        throw 'login.failed';
      } else {
        var googleAuth = await res.authentication;
        FirebaseAuth auth = FirebaseAuth.instance;
        AuthCredential credential =
            GoogleAuthProvider.credential(accessToken: googleAuth.accessToken);
        await auth.signInWithCredential(credential);
        final _user = FirebaseAuth.instance.currentUser;
        if (_user != null) {
          await _user.updateDisplayName(res.displayName);
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> singIn({required String email, required String password}) async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> singUp({required String email, required String password}) async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseAuth.instance.currentUser?.sendEmailVerification();
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
