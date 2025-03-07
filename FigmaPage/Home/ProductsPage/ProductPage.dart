import 'package:flutter/material.dart';
import 'package:sample/FigmaPage/UtilsPage/Utils.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: Color(0xFFF2F2F2),
          child: IconButton(icon: Icon(Icons.toc), onPressed: () {}),
        ),
        title: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Image.asset(FigmaImage.PagePhoto)],
          ),
        ),
        actions: [Image.asset(FigmaImage.picPhoto)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: Color(0xFFF2F2F2),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search any product',
                    prefixIcon: Icon(Icons.search_rounded),
                    suffixIcon: Icon(Icons.mic),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      '52,082 + items',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 65),
                    Container(
                      width: 70,
                      height: 35,
                      color: Color(0xFFF2F2F2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Sort', style: TextStyle(color: Colors.black)),
                          SizedBox(width: 5),
                          Icon(
                            Icons.compare_arrows,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 70,
                      height: 35,
                      color: Color(0xFFF2F2F2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Filter', style: TextStyle(color: Colors.black)),
                          SizedBox(width: 5),
                          Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics:NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 12,
                itemBuilder: (context, index) {
                  List<Map<String, String>> products = [
                    {
                      'imageUrl': FigmaImage.blackPhoto,
                      'title': 'black Winter',
                      'details': 'Autumn And Winter Casual cotton-padded jacket...',
                      'price': '\$499',
                      'reviews': '6890',
                    },
                    {
                      'imageUrl': FigmaImage.GirlBlackPhoto,
                      'title': 'Black Dress',
                      'details': 'Solid Black Dress for Women, Sexy Chain Shorts Ladi...',
                      'price': '\$2000',
                      'reviews': '5,23,456',
                    },
                    {
                      'imageUrl': FigmaImage.JordanShoesPhoto,
                      'title': 'Jordan Stay',
                      'details': 'The classic Air Jordan 12 to create a shoe that fres...',
                      'price': '\$4999',
                      'reviews': '10,23,456',
                    },
                    {
                      'imageUrl': FigmaImage.FlareDressPhoto,
                      'title': 'FlareDress',
                      'details': 'Antheaa Black & Rust Orange Floral Print Tiered Midi F...',
                      'price': '\$1990',
                      'reviews': '3,35,556',
                    },
                    {
                      'imageUrl': FigmaImage.Psp5Photo,
                      'title': 'Sony Ps4',
                      'details': 'Sony PS4 Console, 1TB Slim with 3 Games: Gran Turis...',
                      'price': '\$1999',
                      'reviews': '8,35,566',
                    },
                    {
                      'imageUrl': FigmaImage.DegitalPhoto,
                      'title': 'D7200 Degital Camara',
                      'details': 'D7200 Digital Camera (Nikon) In New Area...',
                      'price': '\$26999',
                      'reviews': '67456',
                    },
                    {
                      'imageUrl': FigmaImage.DegitalPhoto,
                      'title': 'D7200 Degital Camara',
                      'details': 'D7200 Digital Camera (Nikon) In New Area...',
                      'price': '\$26999',
                      'reviews': '67456',
                    },
                    {
                      'imageUrl': FigmaImage.DegitalPhoto,
                      'title': 'D7200 Degital Camara',
                      'details': 'D7200 Digital Camera (Nikon) In New Area...',
                      'price': '\$26999',
                      'reviews': '67456',
                    },
                    {
                      'imageUrl': FigmaImage.DegitalPhoto,
                      'title': 'D7200 Degital Camara',
                      'details': 'D7200 Digital Camera (Nikon) In New Area...',
                      'price': '\$26999',
                      'reviews': '67456',
                    },
                    {
                      'imageUrl': FigmaImage.DegitalPhoto,
                      'title': 'D7200 Degital Camara',
                      'details': 'D7200 Digital Camera (Nikon) In New Area...',
                      'price': '\$26999',
                      'reviews': '67456',
                    },
                    {
                      'imageUrl': FigmaImage.DegitalPhoto,
                      'title': 'D7200 Degital Camara',
                      'details': 'D7200 Digital Camera (Nikon) In New Area...',
                      'price': '\$26999',
                      'reviews': '67456',
                    },
                    {
                      'imageUrl': FigmaImage.DegitalPhoto,
                      'title': 'D7200 Degital Camara',
                      'details': 'D7200 Digital Camera (Nikon) In New Area...',
                      'price': '\$26999',
                      'reviews': '67456',
                    },
                  ];
                  return CardWid(
                    imageUrl: products[index]['imageUrl']!,
                    title: products[index]['title']!,
                    details: products[index]['details']!,
                    price: products[index]['price']!,
                    reviews: products[index]['reviews']!,
                  );
                },
              ),
              SizedBox(height: 15,),
              Container(
                width: 320,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.shade300
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.home_outlined,
                            size: 30.0,
                            color: Colors.black,
                          ),
                          Text('Home',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(width:14,),
                      Column(
                        children: [
                          Icon(Icons.favorite_border_outlined,
                            size: 30.0,
                            color: Colors.red,
                          ),
                          Text('WishList',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(width:13,),
                      Column(
                        children: [
                          Icon(Icons.shopping_cart_outlined,
                            size: 40.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(width: 13,),
                      Column(
                        children: [
                          Icon(Icons.search_rounded,
                            size: 40.0,
                            color: Colors.black,
                          ),
                          Text('Search', style:TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                      SizedBox(width: 13,),
                      Column(
                        children: [
                          Icon(Icons.settings,
                            size: 40.0,
                            color: Colors.black,
                          ),
                          Text('Setting', style:TextStyle(color: Colors.black),)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class CardWid extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String details;
  final String price;
  final String reviews;

  CardWid({
    required this.imageUrl,
    required this.title,
    required this.details,
    required this.price,
    required this.reviews,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(details, style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 8),
                  Text(
                    price,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.grey, size: 16),
                      SizedBox(width: 8),
                      Text(
                        reviews,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}