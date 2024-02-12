
import 'package:flutter/material.dart';
import 'package:spotify_application/models/category.dart';
import 'package:spotify_application/models/music.dart';
import 'package:spotify_application/services/category_operations.dart';
import 'package:spotify_application/services/music_operations.dart';

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
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              category.name, 
              style: TextStyle(color: Colors.white),),
          )
        ],)
    );
  }
  createListofCategories(){
    List<Category> categoryList = CategoryOperations.getCategories();
    List<Widget> categories = categoryList.map((Category category)=>createCategory(category)).toList();
    return categories;
  }

  Widget createMusic(Music music){
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.network(
              music.image, fit: BoxFit.cover,)),
          Text(music.name),
          Text(music.desc)
        ],
      ),
    );
  }

  Widget createMusicList(String label){
    List<Music> musicList = MusicOperations.getMusic();
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index){
          return createMusic(musicList[index]);
      }, itemCount: musicList.length,),
    );
  }

  Widget createGrid(){
    return Container(
      height: 300,
      padding: EdgeInsets.all(10),
      child: GridView.count(
        childAspectRatio: 5/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
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
          createGrid(),
          createMusicList('Music For You')
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