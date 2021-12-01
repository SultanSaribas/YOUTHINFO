import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Functions{
  final FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference sdgList = FirebaseFirestore.instance.collection("sdg");

  Future<User?> signIn(String email, String password) async{
    var user = await auth.signInWithEmailAndPassword(email: email, password: password);
    return user.user;

  }
  signOut() async{
    return await auth.signOut();
  }

  Future<User?> register(String name, String surname, String email, String password) async{
    var user = await auth.createUserWithEmailAndPassword(email: email, password: password);

    await FirebaseFirestore.instance.collection("users").doc(user.user!.uid).set({"name":name,"surname":surname,"email":email,});

    return user.user;
  }

  Future getSDGs() async{
    List itemList = [];
    try{
          await sdgList.get().then((querySnapshot){
            querySnapshot.docs.forEach((element){
              itemList.add(element.data);
            });
          });
          print(itemList);
          return itemList;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
}