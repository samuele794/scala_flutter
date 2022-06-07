import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scala_flutter/model/user/user.dart';

class UserRepository {
  final FirebaseFirestore _repository;

  UserRepository(this._repository);

  Future<void> createUser(String userUid) async {
    await _repository
        .collection(userCollection)
        .doc(userUid)
        .set(const User().toJson());
  }

  static const String userCollection = "users";
}
