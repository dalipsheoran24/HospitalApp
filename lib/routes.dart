
import 'package:hospital_doctor/page/dash_board.dart';
import 'package:hospital_doctor/page/home_page.dart';
import 'package:hospital_doctor/page/sign_up_page.dart';
import 'package:hospital_doctor/page/surgeon.dart';
import 'package:hospital_doctor/page/surgeon_doctor.dart';

class Routes {
  static const String HOME = '/home';
  static const String SURGEON = '/surgeon';
  static const String DOCTOR = '/doctor';
  static const String DASH = '/dash';
  static const String SIGNUP = '/SIGNUP';
}
final routes ={
  Routes.HOME:(context) => HomePage(),
  Routes.SURGEON:(context) => Surgeon(),
  Routes.DOCTOR:(context) => SurgeonDoctor(),
  Routes.DASH:(context) => DashBoard(),
  Routes.SIGNUP:(context) => SignUpPage(),
};