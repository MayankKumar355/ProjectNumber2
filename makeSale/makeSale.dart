import 'package:flutter/material.dart';
import 'package:pos_service/screen/makeSale/itemmodel/itemmodel.dart';
import 'package:pos_service/screen/makeSale/provider/makeProvider.dart';
import 'package:pos_service/utils/utils.dart';
import 'package:provider/provider.dart';

class MakeSale extends StatelessWidget {
  void _showAddProductDialog(BuildContext context, ItemModel item) {
    final mediaQuery = MediaQuery.of(context);
    final isTablet = mediaQuery.size.width > 600;
    final makeSaleProvider = Provider.of<MakeProvider>(context, listen: false);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        int quantity = 1;
        bool checkBoxValue = false;

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Add Product: ${item.name}', style: TextStyle(fontSize: isTablet ? 20 : 18)),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.cancel_outlined, color: Colors.red),
                      ),
                    ],
                  ),
                  Divider(thickness: 2, color: Colors.grey),
                ],
              ),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Product Price',
                        hintText: '\₹ ${item.prize}',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 9),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text(
                            'Product Quantity',
                            style: TextStyle(
                              fontSize: isTablet ? 18 : 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 120),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Center(child: Text('$quantity', style: TextStyle(fontSize: isTablet ? 16 : 14))),
                          ),
                          SizedBox(width: 16),
                          _QuantityButton(icon: Icons.minimize, onPressed: () {
                            if (quantity > 1) {
                              setState(() {
                                quantity--;
                              });
                            }
                          }, isTablet: isTablet),
                          SizedBox(width: 16),
                          _QuantityButton(icon: Icons.add, onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          }, isTablet: isTablet),
                        ],
                      ),
                    ),
                    Divider(thickness: 2,color: Colors.grey,),
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Checkbox(
                                value: checkBoxValue,
                                activeColor: Colors.green,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    checkBoxValue = newValue ?? false;
                                  });
                                },
                              ),
                              Text('Service item 01'),
                              SizedBox(width: 200,),
                              Text('\$100'),
                              SizedBox(height: 12,),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Checkbox(
                                value: checkBoxValue,
                                activeColor: Colors.green,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    checkBoxValue = newValue ?? true;
                                  });
                                },
                              ),
                              Text('Service item 02'),
                              SizedBox(width: 200,),
                              Text('\$200'),
                              SizedBox(height: 12,),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Checkbox(
                                value: checkBoxValue,
                                activeColor: Colors.green,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    checkBoxValue = newValue ?? true;
                                  });
                                },
                              ),
                              Text('Service item 03'),
                              SizedBox(width: 200,),
                              Text('\$300'),
                              SizedBox(height: 12,),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    makeSaleProvider.toggleItemSelection(item, quantity);
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFF1672BD),
                    fixedSize: Size(mediaQuery.size.width * (isTablet ? 0.6 : 0.8), isTablet ? 55 : 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: (){
                    },
                    child: Text(
                      'Add To Bill',
                      style: TextStyle(color: Colors.white, fontSize: isTablet ? 21 : 19),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  List<ItemModel> itemmodel = [
    ItemModel(name: "Product Name", prize: 1*50,  total: 0),
    ItemModel(name: "Product Name", prize: 1*50,  total: 0),
    ItemModel(name: "Product Name", prize: 1*50,  total: 0),
    ItemModel(name: "Product Name", prize: 1*50,  total: 0),
    ItemModel(name: "Product Name", prize: 1*50,  total: 0),
    ItemModel(name: "Product Name", prize: 1*50,  total: 0),
  ];

  @override
  Widget build(BuildContext context) {
    final makeSaleProvider = Provider.of<MakeProvider>(context);
    final mediaQuery = MediaQuery.of(context);
    final isTablet = mediaQuery.size.width > 600;

    return Scaffold(
      body: Row(
        children: [
          Card(
            elevation: 5,
            child: Container(
              width: makeSaleProvider.showText ? (isTablet ? 200 : 160) : 55,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      makeSaleProvider.showText
                          ? Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: makeSaleProvider.showText
                            ? Image.asset(Pos_Services.login, width: isTablet ? 80 : 60)
                            : null,
                      )
                          : SizedBox.shrink(),
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          makeSaleProvider.toggleShowText();
                        },
                      ),
                    ],
                  ),
                  Divider(thickness: 2, color: Colors.grey),
                  Expanded(
                    child: ListView(
                      children: [
                        _SidebarItem(
                          icon: Icons.dashboard,
                          text: 'dashboard',
                          showText: makeSaleProvider.showText,
                          isTablet: isTablet,
                          isSelected: 0 == 0,
                        ),
                        _SidebarItem(icon: Icons.note_add_sharp, text: 'Products', showText: makeSaleProvider.showText, isTablet: isTablet),
                        _SidebarItem(icon: Icons.person_outline_rounded, text: 'Employee', showText: makeSaleProvider.showText, isTablet: isTablet),
                        _SidebarItem(icon: Icons.calendar_view_week_sharp, text: 'Transitions', showText: makeSaleProvider.showText, isTablet: isTablet),
                        _SidebarItem(icon: Icons.settings, text: 'Services', showText: makeSaleProvider.showText, isTablet: isTablet),
                        _SidebarItem(icon: Icons.logout, text: 'Logout', showText: makeSaleProvider.showText, isTablet: isTablet),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      height: isTablet ? 30 : 24,
                      decoration: BoxDecoration(color: Colors.lightBlue),
                      child: Center(
                        child: Text(
                          'App Version 1.0',
                          style: TextStyle(fontSize: isTablet ? 14 : 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(isTablet ? 16.0 : 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Make A Sale',
                    style: TextStyle(color: Colors.black, fontSize: isTablet ? 28 : 22),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: makeSaleProvider.billNumberController,
                    decoration: InputDecoration(
                      labelText: 'Bill Number',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: isTablet ? 3 : 2,
                              childAspectRatio: 1.2,
                              crossAxisSpacing: isTablet ? 24.0 : 16.0,
                              mainAxisSpacing: isTablet ? 24.0 : 16.0,
                              mainAxisExtent: isTablet ? 150.0 : 120.0,
                            ),
                            itemCount: itemmodel.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ProductCard(
                                productName: itemmodel[index].name,
                                imageUrl: Pos_Services.camera,
                                onTap: () {
                                  _showAddProductDialog(context, itemmodel[index]);
                                },
                                isTablet: isTablet,
                              );
                            },
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ' Add Products',
                                    style: TextStyle(
                                      fontSize: isTablet ? 18 : 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: isTablet ? 8 : 4),
                                    height: isTablet ? 40 : 30,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Product Name', style: TextStyle(fontSize: isTablet ? 16 : 14)),
                                        Text('Qty', style: TextStyle(fontSize: isTablet ? 16 : 14)),
                                        Text('Price', style: TextStyle(fontSize: isTablet ? 16 : 14)),
                                        Text('Total', style: TextStyle(fontSize: isTablet ? 16 : 14)),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: makeSaleProvider.selectedItems.length,
                                      itemBuilder: (context, index) {
                                        final item = makeSaleProvider.selectedItems[index];
                                        return Padding(
                                          padding: EdgeInsets.symmetric(vertical: isTablet ? 8.0 : 4.0, horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(item.name, style: TextStyle(fontSize: isTablet ? 16 : 14)),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.minimize),
                                                  SizedBox(width: 2),
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Container(
                                                      width: 23,
                                                      height: 21,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(color: Colors.grey),
                                                      ),
                                                      child: Center(
                                                        child: Text('30', style: TextStyle(fontSize: isTablet ? 16 : 14)),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width:2),
                                                  Icon(Icons.add, size: 16),
                                                ],
                                              ),
                                              Text('\$${item.prize}', style: TextStyle(fontSize: isTablet ? 16 : 14)),
                                              Text('\$${item.total}', style: TextStyle(fontSize: isTablet ? 16 : 14)),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  ElevatedButton(
                                    onPressed: () {
                                     // Navigator.push(context, MaterialPageRoute(builder: (context) => MakeSaleTw(billItems: makeSaleProvider.selectedItems)));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0XFF1672BD),
                                      fixedSize: Size(MediaQuery.of(context).size.width * 0.9, isTablet ? 50 : 35),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1.0),
                                      ),
                                    ),
                                    child: Text(
                                      'CheckOut',
                                      style: TextStyle(color: Colors.white, fontSize: isTablet ? 21 : 19),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool showText;
  final bool isTablet;
  final bool isSelected;

  const _SidebarItem({
    required this.icon,
    required this.text,
    required this.showText,
    required this.isTablet,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.blue : null,
          ),
          SizedBox(width: 10),
          Expanded(
            child: showText
                ? Text(
              text,
              style: TextStyle(fontSize: isTablet ? 16 : 14, color: isSelected ? Colors.blue : null),
            )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}

class _ServiceItem extends StatelessWidget {
  final String serviceName;
  final String price;
  final bool isTablet;

  const _ServiceItem({
    required this.serviceName,
    required this.price,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    final makeSaleProvider = Provider.of<MakeProvider>(context);
    return Row(
      children: [
        Checkbox(
          value: makeSaleProvider.selectedServices.contains(serviceName),
          activeColor: Colors.blueGrey,
          onChanged: (bool? newValue) {
            if (newValue != null) {
              makeSaleProvider.toggleServiceSelection(serviceName);
            }
          },
        ),
        Text(serviceName, style: TextStyle(fontSize: isTablet ? 16 : 14)),
        SizedBox(width: isTablet ? 200 : 100),
        Text(price, style: TextStyle(fontSize: isTablet ? 16 : 14)),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final String imageUrl;
  final VoidCallback onTap;
  final bool isTablet;

  const ProductCard({
    super.key,
    required this.productName,
    required this.imageUrl,
    required this.onTap,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(imageUrl, width: isTablet ? 80 : 60, height: isTablet ? 80 : 60, fit: BoxFit.cover),
              SizedBox(width: 9),
              Expanded(
                child: Text(
                  productName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: isTablet ? 18 : 16),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final bool isTablet;

  const _QuantityButton({
    required this.icon,
    required this.onPressed,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isTablet ? 28 : 18,
      width: isTablet ? 28 : 18,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Center(
        child: IconButton(
          padding: EdgeInsets.zero,
          iconSize: isTablet ? 20 : 16,
          onPressed: onPressed,
          icon: Icon(icon),
        ),
      ),
    );
  }
}
class loginBuild extends StatefulWidget {
  const loginBuild({super.key});

  @override
  State<loginBuild> createState() => _loginBuildState();
}

class _loginBuildState extends State<loginBuild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Logic Build'),
      ),
      body: Column(
        children: [
          Text('Logic Build'),
          SizedBox(height: 12,),
          ElevatedButton(onPressed: (){
         //   Navigator.push(context, MaterialPageRoute(builder: (context)));
          }, child: Text('Logic Build'))
        ],
      ),
    );
  }
}
