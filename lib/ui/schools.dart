import 'package:flutter/material.dart';

class Schools extends StatefulWidget {
  const Schools({super.key});

  @override
  State<Schools> createState() => _SchoolsState();
}

class _SchoolsState extends State<Schools> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Schools"),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: () => {}, label: Text("Create School"), icon: Icon(Icons.add),),
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
    
    if(schools.isEmpty) return Center(child: Text("No School Found, Create a new school"),);
    
    return Center();
  }
}
