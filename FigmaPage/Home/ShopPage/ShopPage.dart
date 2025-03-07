import 'package:flutter/material.dart';
import 'package:sample/FigmaPage/UtilsPage/Utils.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          CircleAvatar(
            backgroundColor: Color(0xFFF2F2F2),
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(FigmaImage.NikeShoesPhoto),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                  SizedBox(width: 7),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(FigmaImage.NikeShoesPhoto),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 17),
            Text(
              '   Size: 7UK',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  SizedBox(width: 16),
                  CategoryTab(text: '6UK', isSelected: false),
                  SizedBox(width: 8),
                  CategoryTab(text: '7UK', isSelected: true),
                  SizedBox(width: 8),
                  CategoryTab(text: '8UK', isSelected: false),
                  SizedBox(width: 8),
                  CategoryTab(text: '9UK', isSelected: false),
                  SizedBox(width: 8),
                  CategoryTab(text: '10UK', isSelected: false),
                  SizedBox(width: 16),
                ],
              ),
            ),
            SizedBox(height: 6),
            Text(
              '  Nike Sneakers',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 1),
            Text(
              '   Vision Alta Men’s Shoes Size (All Colours)',
              style: TextStyle(color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.grey),
                  Text(
                    '  56,890',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  '   \$2999',
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Text('  1500', style: TextStyle(color: Colors.black)),
                Text('  50% Off', style: TextStyle(color: Colors.red)),
              ],
            ),
            Text(
              '  Products Details',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text(
              '  Perhaps the most iconic sneaker of all-time, this original',
            ),
            Text('  Chicago"? colorway is the cornerstone to any sneaker '),
            Text('  collection. Made famous in 1985 by Michael Jordan, the'),
            Text('  shoe has stood the test of time, becoming the most'),
            Text('  famous in 1985 by Michael Jordan, the  famous colorway'),
            Text('  the ...More', style: TextStyle(color: Colors.red)),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text('Nearest Store '),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(children: [Icon(Icons.lock), Text('VIP ')]),
                  ),
                ),
                SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.refresh_outlined),
                        Text('Return Policy '),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Image.asset(FigmaImage.DeliveryPhoto),
            SizedBox(height: 13),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Container(
                    width: 160,
                    height: 56,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.remove_red_eye),
                        ),
                        Text(
                          'View Similar',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 1),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Container(
                    width: 160,
                    height: 56,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.mobile_friendly),
                        ),
                        Text(
                          'Add To Compa.',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              ' Similar To',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 1),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                    ' 282+ iteams',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
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
                        Icon(Icons.compare_arrows, color: Colors.black, size: 20),
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
            SizedBox(height:9,),
            GridView.builder(
              shrinkWrap: true,
              physics:NeverScrollableScrollPhysics(),
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
            SizedBox(height: 9,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
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
                            color: Colors.black,
                          ),
                          Text('WishList',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(width:13,),
                      Column(
                        children: [
                          Icon(Icons.shopping_cart_outlined,
                            size: 40.0,
                            color: Colors.red,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  final String text;
  final bool isSelected;

  const CategoryTab({required this.text, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: isSelected ? Color(0XFFFA7189) : Colors.transparent,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Color(0XFFFA7189)),
      ),
      child: Text(
        text,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
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