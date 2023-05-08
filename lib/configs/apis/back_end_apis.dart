import 'package:cloud_firestore/cloud_firestore.dart';

class BackendApis {
  static final user = FirebaseFirestore.instance.collection('users');
}
