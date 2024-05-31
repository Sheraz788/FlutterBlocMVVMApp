import 'package:flutter/material.dart';

class CreateOrUpdateSchool extends StatefulWidget {
  const CreateOrUpdateSchool({super.key});

  @override
  State<CreateOrUpdateSchool> createState() => _CreateOrUpdateSchoolState();
}

class _CreateOrUpdateSchoolState extends State<CreateOrUpdateSchool> {
  final TextEditingController schoolNameCtrl = TextEditingController();

  final TextEditingController locationCtrl = TextEditingController();

  static const List<String> countries = [
    'India',
    'USA',
    'UK',
    'Russia',
    'Dubai',
    'China',
    'Japan'
  ];

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [Text("Create School")],
    );
  }

  Widget _buildForm() {
    return Form(
        child: Padding(
            padding: EdgeInsets.all(8)
        )
    );
  }
}
