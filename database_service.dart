import 'package:cloud_firestore/cloud_firestore.dart';

class DB {
  final CollectionReference flight =
      FirebaseFirestore.instance.collection('flights');
  final CollectionReference hotel =
      FirebaseFirestore.instance.collection('hotels');
}
