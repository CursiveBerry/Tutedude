import 'package:flutter/material.dart';
import 'package:journalapp/data/journal_objects.dart';

class JournalBottomSheet extends StatefulWidget{
  final Function(JournalObject)onSave;
  const JournalBottomSheet({super.key, required this.onSave});

  @override
  State<JournalBottomSheet> createState() => _JournalBottomSheet();
}

class _JournalBottomSheet extends State<JournalBottomSheet>{
  
  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _descEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _titleEditingController,
            maxLength: 35,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
              label: const Text("Title"),
            ),
          ),
          const SizedBox(height: 15,),
          Expanded(
            child: TextField(
              controller: _descEditingController,
              minLines: 25,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                maintainLabelSize: false,
                label: const Text("Description",style: TextStyle(fontSize: 20,),)
              )
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 104, 107),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),
              ),
              SizedBox(width: 120,),
              SizedBox(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 132, 220, 198),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255)
                  ),
                  onPressed: (){
                    JournalObject entry = JournalObject(
                      id: "10", 
                      title: _titleEditingController.text, 
                      desc: _descEditingController.text,
                      date: DateTime.now().toString().split(' ')[0]
                    );
                    widget.onSave(entry);
                    Navigator.pop(context);
                  },
                  child: const Text("Submit")
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}