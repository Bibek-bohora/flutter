import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: TodoList()));
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  //hook
  //clear forfeild text like e.target.reset();
  final TextEditingController _textController = TextEditingController();
  var value;
  var listtodoarray = [];
  //
  addTodoList() {
    setState(() {
      listtodoarray.add(value);
      _textController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("todo list"),
        backgroundColor: Colors.green,
        elevation: 0.1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _textController,
                onChanged: ((val) {
                  setState(() {
                    value = val;
                    debugPrint(val);
                  });
                }),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("label"),
                  hintText: "add to list",
                ),
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: listtodoarray.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    selectedColor: Colors.red,
                    leading: Text("${index + 1}"),
                    title: Text('  ${listtodoarray[index]} '),
                  );
                })),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addTodoList,
        child: Icon(Icons.add),
      ),
    );
  }
}
