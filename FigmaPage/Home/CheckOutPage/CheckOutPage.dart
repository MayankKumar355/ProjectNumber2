import 'package:flutter/material.dart';
import 'package:sample/FigmaPage/UtilsPage/Utils.dart' show FigmaImage;

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          '      CheckOut',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: height * 0.04,
          ),
        ),
      ),
      body: Column(
        children: [
          Text('--------------------------------------------------------------------------------',style:TextStyle(fontSize: height*0.04),),
          Padding(
            padding: EdgeInsets.all(height * 0.015),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined),
                SizedBox(width: width * 0.02),
                Text(
                  'Delivery Address',
                  style: TextStyle(fontSize: height * 0.025),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.005),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  elevation: 3,
                  child: Container(
                    width: width * 0.6,
                    color: Colors.white,
                    padding: EdgeInsets.all(height * 0.015),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Address :',
                              style: TextStyle(fontSize: height * 0.02),
                            ),
                            Icon(Icons.note_alt_outlined),
                          ],
                        ),
                        SizedBox(height: height * 0.015),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '216 St Paul Rd, London N1 2LL, UK',
                              style: TextStyle(fontSize: height * 0.02),
                            ),
                            Text(
                              'Second text here',
                              style: TextStyle(fontSize: height * 0.02),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width * 0.03),
                Card(
                  elevation: 5,
                  child: Container(
                    width: width * 0.2, // Responsive width
                    height: height * 0.12, // Responsive height
                    color: Colors.white,
                    child: Icon(
                      Icons.add_circle_outline_outlined,
                      size: height * 0.05, // Responsive size
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '  Shopping List',
              style: TextStyle(
                fontSize: height * 0.03, // Responsive font size
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: height * 0.01),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 2,
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
          ),
        ],
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
              height: height * 0.2, // Responsive height
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(height * 0.01), // Responsive padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: height * 0.02, // Responsive font size
                  ),
                ),
                Text(
                  details,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: height * 0.015, // Responsive font size
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: height * 0.02, // Responsive font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: height * 0.02), // Responsive size
                    Icon(Icons.star, color: Colors.yellow, size: height * 0.02),
                    Icon(Icons.star, color: Colors.yellow, size: height * 0.02),
                    Icon(Icons.star, color: Colors.yellow, size: height * 0.02),
                    Icon(Icons.star, color: Colors.grey, size: height * 0.02),
                    SizedBox(width: width * 0.02),
                    Text(
                      reviews,
                      style: TextStyle(
                        fontSize: height * 0.015, // Responsive font size
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}