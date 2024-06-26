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

  String? selectedCountry = countries[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Create School"),
        const Divider(),
        _buildForm(),
        const Divider()
      ],
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
            padding: EdgeInsets.all(8),
          child: Wrap(
            spacing: 10,
            runSpacing: 20,
            children: [
              TextFormField(controller: schoolNameCtrl, decoration: const InputDecoration(label: Text("School Name"), suffixIcon: Icon(Icons.school), border: OutlineInputBorder())),
              
              DropdownButtonFormField(
                  items: countries.map((e) => DropdownMenuItem(child: Text(e), value: e,)).toList(),
                  onChanged: (val){
                    selectedCountry = val;
                  },
                value: selectedCountry,
                style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
                decoration: const InputDecoration(border: OutlineInputBorder()),
              )
            ],
          ),
        )
    );
  }
}
