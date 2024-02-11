import 'package:flutter/material.dart';
import 'package:spotify_application/models/category.dart';
import 'package:spotify_application/services/category_operations.dart';

class  Home extends StatelessWidget {
  const Home({super.key});

  Widget createAppBar(String message){
    return AppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(message, style: TextStyle(color: Colors.white),),),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.settings))
      ],
    );
  }
  Widget createCategory(Category category){
    return Container(
      color: const Color.fromARGB(255, 117, 136, 145),
      child: Row(
        children: [
          Image.network(category.imageURL, fit: BoxFit.cover),
          Text(category.name, style: TextStyle(color: Colors.white),)
        ],)
    );
  }
  createListofCategories(){
    List<Category> categoryList = CategoryOperations.getCategories();
    List<Widget> categories = categoryList.map((Category category)=>createCategory(category)).toList();
    return categories;
  }

  Widget createGrid(){
    return Container(
      height: 400,
      child: GridView.count(
        childAspectRatio: ,
        children: createListofCategories(),
        crossAxisCount: 2,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: Container(
        child: Column(children: [
          createAppBar('Good Morning'), 
          SizedBox(height: 5,),
          createGrid()
        ], ),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blueGrey.shade300, Colors.black, Colors.black
          ], begin: Alignment.topLeft, end: Alignment.bottomRight,)
        ),
        // color: Colors.amber,
      )
    );
  }
}