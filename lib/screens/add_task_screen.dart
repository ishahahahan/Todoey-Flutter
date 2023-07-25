import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Text',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            const TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Colors.lightBlueAccent),
              ),
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
