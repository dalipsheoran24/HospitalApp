
import 'package:hospital_doctor/page/cardioLogists.dart';
import 'package:hospital_doctor/page/dash_board.dart';
import 'package:hospital_doctor/page/dentist.dart';
import 'package:hospital_doctor/page/detmatologist.dart';
import 'package:hospital_doctor/page/home_page.dart';
import 'package:hospital_doctor/page/ophthalmologist.dart';
import 'package:hospital_doctor/page/orthopedic.dart';
import 'package:hospital_doctor/page/sign_up_page.dart';
import 'package:hospital_doctor/page/surgeon.dart';
import 'package:hospital_doctor/page/surgeon_doctor.dart';

class Routes {
  static const String HOME = '/home';
  static const String SURGEON = '/surgeon';
  static const String DOCTOR = '/doctor';
  static const String DASH = '/dash';
  static const String SIGNUP = '/SIGNUP';
  static const String DENTIST = '/dentist';
  static const String ORTHOPENDIC = '/orthopendic';
  static const String OPHTHALMOLOGIST = '/ophthalmologist';
  static const String CARDIOLOGISTS = '/cardioloists';
  static const String DETMATOLOGIST = '/detmatologist';
}
final routes ={
  Routes.HOME:(context) => HomePage(),
  Routes.SURGEON:(context) => Surgeon(),
  Routes.DOCTOR:(context) => SurgeonDoctor(),
  Routes.DASH:(context) => DashBoard(),
  Routes.SIGNUP:(context) => SignUpPage(),
  Routes.DENTIST:(context) => Dentist(),
  Routes.ORTHOPENDIC:(context) => Orthopendic(),
  Routes.CARDIOLOGISTS:(context) => CardioLogists(),
  Routes.OPHTHALMOLOGIST:(context) => Ophthalmologist(),
  Routes.DETMATOLOGIST:(context) => Detmatologist(),
};