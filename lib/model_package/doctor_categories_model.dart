import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routes.dart';

class DoctorCategoriesModel{
  final String categoriesName;
  final IconData icon;
  final Color colorModel;
  final String openPageName;
const DoctorCategoriesModel({this.categoriesName,this.icon,this.colorModel,this.openPageName});
}
const List<DoctorCategoriesModel> doctorCategoriesModel = const <DoctorCategoriesModel>[
  const DoctorCategoriesModel(
    categoriesName: 'Dentist',icon: Icons.remove_red_eye_outlined,openPageName: Routes.SURGEON,
    colorModel:  Color.fromRGBO(238,248,248,1),
  ),
const DoctorCategoriesModel(
    categoriesName: 'Orthopedic',icon: Icons.remove_red_eye_outlined,openPageName: Routes.SURGEON,
    colorModel:  Color.fromRGBO(249,249,238,1),
  ),
const DoctorCategoriesModel(
    categoriesName: 'Surgeon',icon: Icons.remove_red_eye_outlined,openPageName: Routes.SURGEON,
    colorModel:  Color.fromRGBO(254,231,231,1),
  ),
const DoctorCategoriesModel(
    categoriesName: 'Cardiologists',icon: Icons.remove_red_eye_outlined,openPageName: Routes.SURGEON,
    colorModel:  Color.fromRGBO(239,227,248,1),
  ),
const DoctorCategoriesModel(
    categoriesName: 'Ophthalmologist',icon: Icons.remove_red_eye_outlined,openPageName: Routes.SURGEON,
    colorModel:  Color.fromRGBO(255,241,232,1),
  ),
const DoctorCategoriesModel(
    categoriesName: 'Detmatologist',icon: Icons.remove_red_eye_outlined,openPageName: Routes.SURGEON,
    colorModel:  Color.fromRGBO(228,248,255,1),
  ),
];