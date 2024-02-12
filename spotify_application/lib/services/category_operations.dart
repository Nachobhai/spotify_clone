import 'package:spotify_application/models/category.dart';

class CategoryOperations{
  CategoryOperations._() {}
  static List<Category> getCategories(){
    return <Category>[
      Category('Top songs', 
      'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/c3/64/7b/c3647b8d-4f28-d954-7a0b-a3568029e2fd/AppIcon-0-0-1x_U007emarketing-0-7-0-85-220.png/256x256bb.jpg'),
      Category('lalalala', 
      'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/c3/64/7b/c3647b8d-4f28-d954-7a0b-a3568029e2fd/AppIcon-0-0-1x_U007emarketing-0-7-0-85-220.png/256x256bb.jpg'),
      Category('bruuuuaaahh', 
      'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/c3/64/7b/c3647b8d-4f28-d954-7a0b-a3568029e2fd/AppIcon-0-0-1x_U007emarketing-0-7-0-85-220.png/256x256bb.jpg'),
      Category('lassi bkl', 
      'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/c3/64/7b/c3647b8d-4f28-d954-7a0b-a3568029e2fd/AppIcon-0-0-1x_U007emarketing-0-7-0-85-220.png/256x256bb.jpg'),

    ];
  }
}