import 'package:flutter/material.dart';
import 'package:journalapp/data/journal_entry_store.dart';
import 'package:journalapp/widgets/journal_bottom_sheet.dart';
import 'package:journalapp/widgets/journaltile.dart';

class JournalHomePage extends StatefulWidget{
  const JournalHomePage({super.key});

  @override
  State<JournalHomePage> createState() => _JournalHomePage();
}

class _JournalHomePage extends State<JournalHomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Journal App"),
        backgroundColor: Color.fromARGB(255, 252, 215, 209),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ListView.builder(
            itemCount: listEntries.length,
            itemBuilder: (context, index){
              return Journaltile(
                listEntries[index]
              );
            }
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10),),
            ),
            isScrollControlled: true,
            builder: (context){
              return JournalBottomSheet(
                onSave: (entry){
                  setState(() {
                    listEntries.add(entry);
                  });
                },
              );
            }
          );
        },
        backgroundColor: Color.fromARGB(255, 239, 166, 247),
        child: Icon(Icons.add),
      )
    );
  }
}