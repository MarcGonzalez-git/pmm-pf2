
import 'package:flutter/material.dart';

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({super.key});

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {

  List<String> tasks = ["Tasca 1", "Tasca 2", "Tasca 3", "Tasca 4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widgets"),
      ),

      body: Column(
        children: [

          // ExpansionTile
          ExpansionTile(
            title: Text("Més informació"),
            children: [
              ListTile(
                title: Text("AIxò és un ExpansionTile"),
                subtitle: Text("Es pot amagar o mostrar la informació desitjada"),
              ),
            ],
          ),

          // Dismissible
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: ValueKey(tasks[index]),
                  background: Container(color: Colors.red),

                  onDismissed: (direction) {
                    setState(() {
                      tasks.removeAt(index);
                    });
                  },

                  child: ListTile(
                    title: Text(tasks[index]),
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
