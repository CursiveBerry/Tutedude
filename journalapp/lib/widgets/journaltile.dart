import 'package:flutter/material.dart';
import 'package:journalapp/data/journal_objects.dart';

class Journaltile extends StatelessWidget {
  final JournalObject entry;
  const Journaltile(this.entry, {super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 244, 227, 246),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(entry.title,
              style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text(entry.desc,
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 10,),
            Text(entry.date,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}