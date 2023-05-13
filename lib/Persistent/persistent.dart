import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../Services/global_variales.dart';

class Persistent {

   static List<String> jobCategoryList = [
    'Architecture and Construction',
    'Education and Training',
    'Development - Programming', 
    'Bussiness', 
    'Information Technology', 
    'Human Resources', 
    'Marketing', 
    'Design',
    'Accounting',
   ];
   void getMyData() async {
    final DocumentSnapshot userDoc = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    name = userDoc.get('name');
      userImage = userDoc.get('userImage');
      location = userDoc.get('location');
  }
}