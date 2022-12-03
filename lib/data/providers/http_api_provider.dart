import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../models/models.dart';
import '../../utils/utils.dart';
import 'providers.dart';

class HttpApiProvider implements ApiProvider {
  final _appUsers = FirebaseFirestore.instance.collection('app_users');

  @override
  Future<UserModel?> getAuthenticatedUser() async {
    try {
      final String? _uid = FirebaseAuth.instance.currentUser?.uid;
      if (_uid != null) {
        DocumentSnapshot documentSnapshot = await _appUsers.doc(_uid).get();
        final user = UserModel.fromJson(documentSnapshot.data());
        return user;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

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
      logger.d(result.status);
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

  @override
  Future college({required String college}) async {
    try {
      final String? _uid = FirebaseAuth.instance.currentUser?.uid;
      await _appUsers.doc(_uid).update({'college': college});
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CollegeModel>> colleges({required String countryCode}) async {
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('colleges')
          .where('country_code', isEqualTo: countryCode)
          .get();
      List<QueryDocumentSnapshot> docs = querySnapshot.docs;
      List<CollegeModel> list =
          docs.map((doc) => CollegeModel.fromJson(doc.data())).toList();
      return list;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CountryModel>> countries() async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('countries').get();
      List<QueryDocumentSnapshot> docs = querySnapshot.docs;
      List<CountryModel> list =
          docs.map((doc) => CountryModel.fromJson(doc.data())).toList();
      return list;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future country({required String country}) async {
    try {
      final String? _uid = FirebaseAuth.instance.currentUser?.uid;
      await _appUsers.doc(_uid).update({'country': country});
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future uploadCollegeId({required String collegeId}) async {
    try {
      final String? _uid = FirebaseAuth.instance.currentUser?.uid;
      Reference ref = FirebaseStorage.instance
          .ref()
          .child('user_documents')
          .child(_uid!)
          .child('college_id.png');
      ;
      await ref.putFile(File(collegeId));
      final filePath = await ref.getDownloadURL();
      await _appUsers.doc(_uid).update({
        'college_id': {
          'document': filePath,
          'updated': FieldValue.serverTimestamp()
        }
      });
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future uploadDocumentId({required String documentId}) async {
    try {
      final String? _uid = FirebaseAuth.instance.currentUser?.uid;
      Reference ref = FirebaseStorage.instance
          .ref()
          .child('user_documents')
          .child(_uid!)
          .child('document_id.png');
      ;
      await ref.putFile(File(documentId));
      final filePath = await ref.getDownloadURL();
      await _appUsers.doc(_uid).update({
        'document_id': {
          'document': filePath,
          'updated': FieldValue.serverTimestamp()
        }
      });
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future uploadSelfie({required String selfie}) async {
    try {
      final String? _uid = FirebaseAuth.instance.currentUser?.uid;
      Reference ref = FirebaseStorage.instance
          .ref()
          .child('user_documents')
          .child(_uid!)
          .child('selfie.png');
      await ref.putFile(File(selfie));
      final filePath = await ref.getDownloadURL();
      await _appUsers.doc(_uid).update({
        'selfie': {
          'document': filePath,
          'updated': FieldValue.serverTimestamp()
        }
      });
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future updatePrfile({
    String? fName,
    String? lName,
    String? dob,
    int? geneder,
    String? email,
    bool? termsAndCondition,
    String? countryCode,
    String? collegeCode,
    String? collegeLogo,
  }) async {
    try {
      var data = <String, dynamic>{};
      data['f_name'] = fName;
      data['l_name'] = lName;
      data['dob'] = dob;
      data['gender'] = geneder;
      data['updated'] = FieldValue.serverTimestamp();
      data['terms_and_conditions_accepted'] = termsAndCondition;
      data['country'] = countryCode;
      data['college'] = collegeCode;
      data['college_logo'] = collegeLogo;
      data.removeWhere((key, value) => value == null);
      final String? _uid = FirebaseAuth.instance.currentUser?.uid;
      await _appUsers.doc(_uid).update(data);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future setProfile(
      {required String email,
      String? fName,
      String? lName,
      String? dob,
      int? geneder}) async {
    try {
      final _user = FirebaseAuth.instance.currentUser;
      var data = <String, dynamic>{};
      try {
        data['f_name'] = _user?.displayName?.split(' ')[0];
        data['l_name'] = _user?.displayName?.split(' ')[1];
      } catch (e) {}
      data['email'] = _user?.email;
      data['created'] = FieldValue.serverTimestamp();
      data.removeWhere((key, value) => value == null);
      await _appUsers.doc(_user?.uid).set(data);
      return true;
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
  Future<bool> getAuthenticatedStatus() async {
    try {
      return FirebaseAuth.instance.currentUser?.uid != null;
    } catch (e) {
      rethrow;
    }
  }
}
