import 'package:flutter/material.dart';
import 'package:sample/FigmaPage/UtilsPage/Utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double weight = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFFF2F2F2),
          child: IconButton(icon: const Icon(Icons.toc), onPressed: () {}),
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
                color: const Color(0xFFF2F2F2),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search any product',
                    prefixIcon: const Icon(Icons.search_rounded),
                    suffixIcon: const Icon(Icons.mic),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
             SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              //SizedBox(height: 12,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Text(
                     'All Featured',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.065),
                    Container(
                      width: 70,
                      height: 35,
                      color: const Color(0xFFF2F2F2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
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
                     SizedBox(width: MediaQuery.of(context).size.width*0.08 ),
                    Container(
                      width: 70,
                      height: 35,
                      color: const Color(0xFFF2F2F2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
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
              SizedBox(height: MediaQuery.of(context).size.height*0.022),
              Container(
                color: const Color(0xFFF2F2F2),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image(image: AssetImage(FigmaImage.MakeUpPhoto),width:MediaQuery.of(context).size.width *0.20,fit: BoxFit.fill,),
                      SizedBox(width: 18),
                      Image(image: AssetImage(FigmaImage.FashionPhoto),width:MediaQuery.of(context).size.width*0.20,fit: BoxFit.fill,),
                      SizedBox(width: 18),
                      Image(image: AssetImage(FigmaImage.ClothesPhoto),width:MediaQuery.of(context).size.width*0.20,fit: BoxFit.fill,),
                      SizedBox(width:18),
                      Image(image: AssetImage(FigmaImage.MenPhoto),width:MediaQuery.of(context).size.width*0.20,fit: BoxFit.fill,),
                      SizedBox(width: 18),
                      Image(image: AssetImage(FigmaImage.WomenPhoto),width:MediaQuery.of(context).size.width*0.20,fit: BoxFit.fill,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 19),
              Image.asset(FigmaImage.MidPhoto,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
              const SizedBox(height: 19),
              Image.asset(FigmaImage.DealPhoto,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
              const SizedBox(height: 19),
              Image.asset(FigmaImage.OfferPhoto,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
              const SizedBox(height: 19),
              Image.asset(FigmaImage.HealsPhoto,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
              const SizedBox(height: 19),
              Image.asset(FigmaImage.ProductsPhoto,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
              const SizedBox(height: 14),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(11.0),
                                    child: Image(
                                      image: AssetImage(FigmaImage.WatchPhoto),
                                      fit: BoxFit.fill,
                                      width: 134,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 9),
                              const Text(
                                'IWC Schaffhausen',
                                style: TextStyle(color: Colors.black),
                              ),
                              const Text(
                                '2021 Pilot Watch',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                              const Text(
                                'SIHH 2019 44mm',
                                style: TextStyle(color: Colors.black),
                              ),
                              const Text(
                                '\$650',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$1599',
                                      style: TextStyle(
                                          color: Colors.grey[700]),
                                    ),
                                    const TextSpan(
                                      text: '60% off',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Container(
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(11.0),
                                    child: Image(
                                      image: AssetImage(FigmaImage.ShoesPhoto),
                                      fit: BoxFit.fill,
                                      width: 134,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 9),
                              const Text(
                                'IWC Schaffhausen',
                                style: TextStyle(color: Colors.black),
                              ),
                              const Text(
                                '2021 Pilot Watch',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                              const Text(
                                'SIHH 2019 44mm',
                                style: TextStyle(color: Colors.black),
                              ),
                              const Text(
                                '\$650',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$1599',
                                      style: TextStyle(
                                          color: Colors.grey[700]),
                                    ),
                                    const TextSpan(
                                      text: '60% off',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Container(
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(11.0),
                                    child: Image(
                                      image: AssetImage(FigmaImage.bagPhoto),
                                      fit: BoxFit.fill,
                                      width: 134,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 9),
                              const Text(
                                'IWC Schaffhausen',
                                style: TextStyle(color: Colors.black),
                              ),
                              const Text(
                                '2021 Pilot Watch',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                              const Text(
                                'SIHH 2019 44mm',
                                style: TextStyle(color: Colors.black),
                              ),
                              const Text(
                                '\$650',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$1599',
                                      style: TextStyle(
                                          color: Colors.grey[700]),
                                    ),
                                    const TextSpan(
                                      text: '60% off',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(FigmaImage.SumaarPhoto),
              const SizedBox(
                height: 15,
              ),
              Image.asset(FigmaImage.SponseredPhoto),
              const SizedBox(
                height: 13,
              ),
              Container(
                width: 320,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.home_outlined,
                            size: 30.0,
                            color: Colors.red,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.favorite_border_outlined,
                            size: 30.0,
                            color: Colors.black,
                          ),
                          Text(
                            'WishList',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.shopping_cart_outlined,
                            size: 40.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.search_rounded,
                            size: 40.0,
                            color: Colors.black,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.settings,
                            size: 40.0,
                            color: Colors.black,
                          ),
                          Text(
                            'Setting',
                            style: TextStyle(color: Colors.black),
                          )
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