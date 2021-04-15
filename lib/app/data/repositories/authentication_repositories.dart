import 'package:dartz/dartz.dart';
import 'package:flutter_shopping_admin/app/data/model/authentication_model.dart';

abstract class AuthenticationInterface {
  Future<Either<String, AuthenticationModel>> adminLogin(
      AuthenticationModel model);
  Future<Either<String, String>> adminRegistration(AuthenticationModel model);
}

// class AuthenticationRepositories implements AuthenticationInterface {
//   @override
//   Future<Either<String, AuthenticationModel>> adminLogin(
//       AuthenticationModel model) async {
//     //AdminUser
//     try {
//       bool isActive = false;
//       bool isAdmin = false;
//       AuthenticationModel authModel;

//       await FirebaseFirestore.instance
//           .collection('AdminUser')
//           .where('isActive', isEqualTo: true)
//           .get()
//           .then((value) {
//         value.docs.forEach((element) {
//           if (model.email == element['email'].toString() &&
//               model.password == element['password'].toString() &&
//               model.isActive == element['isActive']) {
//             isActive = true;
//           }
//         });
//       });

//       if (isActive) {
//         await FirebaseAuth.instance
//             .signInWithEmailAndPassword(
//                 email: model.email, password: model.password)
//             .whenComplete(() async {
//           await FirebaseFirestore.instance
//               .collection('AdminUser')
//               .where('email', isEqualTo: model.email)
//               .get()
//               .then((value1) {
//             value1.docs.forEach((element) {
//               authModel = new AuthenticationModel(
//                 email: element['email'],
//                 password: element['password'],
//                 isAdmin: element['isAdmin'],
//                 isActive: element['isActive'],
//                 phoneNo: element['phoneNo'],
//                 degniation: element['degniation'],
//                 joined: element['joined'],
//                 photo: element['photo'],
//                 profileName: element['profileName'],
//               );
//             });
//           }).whenComplete(() => isAdmin = true);
//         });
//       }
//       if (isActive && isAdmin) {
//         return right(authModel);
//       } else {
//         return left('Authentication Failed');
//       }
//     } catch (error) {
//       return left('Error Performing Login');
//     }
//   }

//   @override
//   Future<Either<String, String>> adminRegistration(
//       AuthenticationModel model) async {
//     try {
//       bool complete = false;
//       String id = '';
//       model.isActive = false;
//       await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(
//               email: model.email, password: model.password)
//           .then((value) => id = value.user.uid)
//           .whenComplete(() async {
//         await FirebaseFirestore.instance
//             .collection('AdminUser')
//             .doc(id)
//             .set(model.toMap())
//             .whenComplete(() => complete = true);
//       });
//       if (complete)
//         return right('Successfully Register');
//       else
//         return left('Something went wrong while Registering');
//     } catch (error) {
//       return left('Register Authentication Failed');
//     }
//   }
// }
