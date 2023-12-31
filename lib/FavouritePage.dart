import 'package:flutter/material.dart';
import 'Details.dart';
import 'prodect.dart';
import 'prodectCard.dart';
class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();}
class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Product> favoriteProducts = demoProducts.where((product) => product.isFavourite).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 350,
            height: 600,
            child: ListView.separated(itemBuilder: (context, index) => ProductCard(
              product: favoriteProducts[index],
              onPress: () {   // Handle card tap as needed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(product: demoProducts[index]),
                  ),
                );
              },
              onFavoriteChanged: (isFavourite) {
                setState(() {
                  favoriteProducts = [...favoriteProducts]; // Create a new list
                  final productIndex = favoriteProducts.indexWhere((product) => product.id == favoriteProducts[index].id);

                  if (isFavourite) {
                    // Add the product to favorites
                    if (productIndex == -1) { favoriteProducts.add(favoriteProducts[index]);     }
                  } else {
                    // Remove the product from favorites
                    if (productIndex != -1) {
                      favoriteProducts.removeAt(productIndex);          }
                  }
                });
              },
            ),separatorBuilder: (context,index){
              return SizedBox(height: 30,);
          }, itemCount: favoriteProducts.length)
          ),
        ),
      ),); }}
