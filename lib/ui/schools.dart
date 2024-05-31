import 'package:flutter/material.dart';
import 'package:flutter_bloc_clear_arch_app/ui/create_update_school.dart';

class Schools extends StatefulWidget {
  const Schools({super.key});

  @override
  State<Schools> createState() => _SchoolsState();
}

class _SchoolsState extends State<Schools> {

  void _showMyDialog(BuildContext context) async {
    final result = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: CreateOrUpdateSchool(),
        );
      },
    );

    if (result != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('You entered: $result')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Schools"),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: () => {
        _showMyDialog(context)
      }, label: Text("Create School"), icon: Icon(Icons.add),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Registered Schools", style: Theme.of(context).textTheme.titleMedium,),
            Expanded(child: _buildRegisteredSchools([]))
          ],
        ),
      ),
    );
  }


  Widget _buildRegisteredSchools(List schools){
    
    if(schools.isEmpty) return const Center(child: Text ("No School Found, Create a new school"),);
    
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      child: ListView.separated(itemBuilder: (context, index){
        var school = schools.elementAt(index);
        return ListTile();
      },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
          itemCount: schools.length),
    );
  }


  bool isMobileResolution(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width < 600; // Adjust this breakpoint as needed
  }

}
