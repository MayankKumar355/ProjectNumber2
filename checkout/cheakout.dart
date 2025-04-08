import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SaleProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Make a Sale UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: MakeSaleScreen(),
      routes: {
        '/checkout': (context) => CheckoutScreen(),
      },
    );
  }
}

// Represents a product item
class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

// Represents an item added to the bill
class BillItem {
  final Product product;
  int quantity;
  double price;
  List<String> services;

  BillItem({
    required this.product,
    this.quantity = 1,
    required this.price,
    this.services = const [],
  });

  double get total => price * quantity + services.length * 100;
}

// State provider for managing the sale
class SaleProvider extends ChangeNotifier {
  List<BillItem> _billItems = [];

  List<BillItem> get billItems => _billItems;

  void addItem(Product product, int quantity, double price, List<String> services) {
    final existingItemIndex =
    _billItems.indexWhere((item) => item.product.name == product.name);
    if (existingItemIndex != -1) {
      _billItems[existingItemIndex].quantity += quantity;
      _billItems[existingItemIndex].price = price;
      _billItems[existingItemIndex].services = services;
    } else {
      _billItems.add(BillItem(
        product: product,
        quantity: quantity,
        price: price,
        services: services,
      ));
    }
    notifyListeners();
  }

  void clearItems() {
    _billItems.clear();
    notifyListeners();
  }
}

class MakeSaleScreen extends StatelessWidget {
  final List<Product> availableProducts = [
    Product(name: 'Product 1', price: 50),
    Product(name: 'Product 2', price: 75),
    Product(name: 'Product 3', price: 100),
    Product(name: 'Product 4', price: 60),
    Product(name: 'Product 5', price: 80),
    Product(name: 'Product 6', price: 120),
  ];

  Future<void> _showAddProductDialog(BuildContext context, Product product) async {
    TextEditingController priceController = TextEditingController(text: product.price.toString());
    int quantity = 1;
    List<bool> serviceSelected = [false, false, false];
    List<String> serviceNames = ['Service item 01', 'Service item 02', 'Service item 03'];
    List<int> servicePrices = [100, 100, 100];

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text('Add Product: ${product.name}'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                      controller: priceController,
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(labelText: 'Product Price'),
                    ),
                    SizedBox(height: 16),
                    Text('Product Quantity'),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            if (quantity > 1) {
                              setState(() {
                                quantity--;
                              });
                            }
                          },
                        ),
                        Text('$quantity'),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text('Add Services (Optional)'),
                    Column(
                      children: List.generate(serviceNames.length, (index) {
                        return CheckboxListTile(
                          title: Text('${serviceNames[index]} - ₹ ${servicePrices[index]}'),
                          value: serviceSelected[index],
                          onChanged: (bool? value) {
                            setState(() {
                              serviceSelected[index] = value!;
                            });
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                ElevatedButton(
                  child: Text('Add To Bill'),
                  onPressed: () {
                    final price = double.tryParse(priceController.text) ?? product.price;
                    final selectedServices = serviceSelected
                        .asMap()
                        .entries
                        .where((entry) => entry.value)
                        .map((entry) => serviceNames[entry.key])
                        .toList();
                    Provider.of<SaleProvider>(context, listen: false)
                        .addItem(product, quantity, price, selectedServices);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isTablet = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Handle menu action
              },
            ),
            SizedBox(width: 16),
            Text(
              'Make a Sale',
              style: TextStyle(color: Colors.black, fontSize: isTablet ? 24 : 20),
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          // Left Sidebar (Placeholder)
          Card(
            elevation: 2,
            child: Container(width: isTablet ? 80 : 60, color: Colors.white),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bill Number',
                    style: TextStyle(color: Colors.grey[600], fontSize: isTablet ? 16 : 14),
                  ),
                  SizedBox(height: 4),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '#POS0584521',
                      border: OutlineInputBorder(),
                    ),
                    readOnly: true,
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: isTablet ? 3 : 2,
                        childAspectRatio: 1.1,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: availableProducts.length,
                      itemBuilder: (context, index) {
                        return ProductCard(
                          product: availableProducts[index],
                          onTap: () {
                            _showAddProductDialog(context, availableProducts[index]);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: isTablet ? 350 : 250,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add Products',
                    style: TextStyle(fontSize: isTablet ? 18 : 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Expanded(
                    child: Consumer<SaleProvider>(
                      builder: (context, saleProvider, child) {
                        return ListView.builder(
                          itemCount: saleProvider.billItems.length,
                          itemBuilder: (context, index) {
                            final item = saleProvider.billItems[index];
                            return ListTile(
                              title: Text(item.product.name),
                              subtitle: Text('Qty: ${item.quantity}, Price: ₹${item.price.toStringAsFixed(2)}, Services: ${item.services.join(', ')}'),
                              trailing: Text('Total: ₹${item.total.toStringAsFixed(2)}'),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/checkout');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                        padding: EdgeInsets.symmetric(vertical: 16),
                        textStyle: TextStyle(fontSize: isTablet ? 18 : 16),
                      ),
                      child: Text('Checkout', style: TextStyle(color: Colors.white)),
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

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductCard({Key? key, required this.product, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isTablet = MediaQuery.of(context).size.width > 600;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt, size: isTablet ? 40 : 30), // Placeholder image
            SizedBox(height: 8),
            Text(
              product.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: isTablet ? 16 : 14),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final saleProvider = Provider.of<SaleProvider>(context);
    final isTablet = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Items in Bill:', style: TextStyle(fontSize: isTablet ? 20 : 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: saleProvider.billItems.length,
                itemBuilder: (context, index) {
                  final item = saleProvider.billItems[index];
                  return ListTile(
                    title: Text(item.product.name, style: TextStyle(fontSize: isTablet ? 16 : 14)),
                    subtitle: Text('Qty: ${item.quantity}, Price: ₹${item.price.toStringAsFixed(2)}, Services: ${item.services.join(', ')}', style: TextStyle(fontSize: isTablet ? 14 : 12)),
                    trailing: Text('Total: ₹${item.total.toStringAsFixed(2)}', style: TextStyle(fontSize: isTablet ? 16 : 14, fontWeight: FontWeight.bold)),
                  );
                },
              ),
            ),
            SizedBox(height: 24),
            Text('Total Amount: ₹${saleProvider.billItems.fold<double>(0, (sum, item) => sum + item.total).toStringAsFixed(2)}',
                style: TextStyle(fontSize: isTablet ? 22 : 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  saleProvider.clearItems();
                  Navigator.pop(context); // Go back to MakeSaleScreen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  padding: EdgeInsets.symmetric(vertical: 16),
                  textStyle: TextStyle(fontSize: isTablet ? 18 : 16),
                ),
                child: Text('Process Payment', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}