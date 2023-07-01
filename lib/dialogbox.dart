import 'package:flutter/material.dart';
import 'home.dart';

class Todo {
  String title, description;
  bool isDone;

  Todo(this.title, this.description, this.isDone);
}

class DialogBox extends State<HomeScreen> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();
  final TextEditingController _daysTEController = TextEditingController();

  get todos => null;

  // DialogBox({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Add New Todo'),
          TextField(
            controller: _titleTEController,
            decoration: const InputDecoration(hintText: 'Title'),
          ),
          TextField(
            controller: _descriptionTEController,
            decoration: const InputDecoration(hintText: 'Description'),
            //selectionHeightStyle: BoxHeightStyle.max,
          ),
          TextField(
            controller: _daysTEController,
            decoration: const InputDecoration(hintText: 'Description'),
          ),

          ElevatedButton(
            onPressed: () {
              if (_titleTEController.text.trim().isNotEmpty &&
                  _descriptionTEController.text.trim().isNotEmpty) {
                todos.add(Todo(_titleTEController.text.trim(),
                    _descriptionTEController.text.trim(), false));
                if (mounted) {
                  setState(() {});
                }
                _titleTEController.clear();
                _descriptionTEController.clear();
                Navigator.pop(context);
              }
            },
            child: const Text('Add'),
          )


  ])

    ),);
  }
}