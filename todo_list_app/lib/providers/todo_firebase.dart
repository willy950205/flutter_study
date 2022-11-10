import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../models/todo.dart';

class TodoFirebase {
  late CollectionReference todosReferece;
  late Stream<QuerySnapshot> todoSream;

  Future initDb() async {
    todosReferece = FirebaseFirestore.instance.collection('todos');
    todoSream = todosReferece.snapshots();
  }

  List<Todo> getTodos(AsyncSnapshot<QuerySnapshot> snapshot) {
    return snapshot.data!.docs.map((DocumentSnapshot document) {
      return Todo.fromSnapshot(document);
    }).toList();
  }

  Future addTodo(Todo todo) async {
    todosReferece.add(todo.toMap());
  }

  Future updateTodo(Todo todo) async {
    todo.reference?.update(todo.toMap());
  }

  Future deleteTodo(Todo todo) async {
    todo.reference?.delete();
  }
}
