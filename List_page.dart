import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderViewScreen extends StatelessWidget {
  const OrderViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = MediaQuery.of(context).size.width > 600;
    final dateFormatter = DateFormat('MMMM yyyy'); // Corrected format
    final dateTimeFormatter = DateFormat('MMMM dd, yyyy | h:mm a'); // Corrected format

    return Scaffold(
      body: Row(
        children: [
          Card(
            elevation: 2,
            child: Container(
              width: isTablet ? 80 : 60,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.menu, size: isTablet ? 32 : 24),
                  ),
                  const Divider(thickness: 1),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.apps, size: isTablet ? 32 : 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.qr_code_scanner, size: isTablet ? 32 : 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.person_outline, size: isTablet ? 32 : 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.list_alt, size: isTablet ? 32 : 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.settings, size: isTablet ? 32 : 24),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.arrow_back_ios_new_outlined,
                        size: isTablet ? 32 : 24),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('App\nVersion 1.0', style: TextStyle(fontSize: 10)),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const BackButton(),
                      const SizedBox(width: 8),
                      Text(
                        'Order View',
                        style: TextStyle(
                            fontSize: isTablet ? 28 : 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Bill Number : #POS84570',
                                style: TextStyle(
                                    fontSize: isTablet ? 18 : 16,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                TextButton.icon(
                                  onPressed: () {
                                    // Handle WhatsApp action
                                  },
                                  icon: const Icon(Icons.whatshot,
                                      color: Colors.green),
                                  label: const Text('Whatsapp',
                                      style: TextStyle(color: Colors.black)),
                                ),
                                const SizedBox(width: 8),
                                TextButton.icon(
                                  onPressed: () {
                                    // Handle Print action
                                  },
                                  icon: const Icon(Icons.print),
                                  label: const Text('Print',
                                      style: TextStyle(color: Colors.black)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(dateFormatter.format(DateTime(2025, 4)), // Corrected usage
                            style: TextStyle(
                                fontSize: isTablet ? 16 : 14,
                                color: Colors.grey[600])),
                        Text(
                            'Invoice Date & Time : ${dateTimeFormatter.format(DateTime(2021, 4, 3, 10, 30))} AM', // Corrected usage
                            style: TextStyle(
                                fontSize: isTablet ? 16 : 14,
                                color: Colors.grey[600])),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Customer Name : Chandan Kumar',
                                    style: TextStyle(
                                        fontSize: isTablet ? 18 : 16)),
                                Text('Phone Number : +91 8890404050',
                                    style: TextStyle(
                                        fontSize: isTablet ? 16 : 14,
                                        color: Colors.grey[600])),
                              ],
                            ),
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://via.placeholder.com/150/808080/FFFFFF?Text=Employee'),
                                ),
                                const SizedBox(width: 8),
                                Text('Employee Name',
                                    style: TextStyle(
                                        fontSize: isTablet ? 16 : 14)),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        const Divider(thickness: 1),
                        const SizedBox(height: 12),
                        const OrderItem(
                          isSelected: true,
                          productName: 'Products Name',
                          quantity: 30,
                          pricePerUnit: 50,
                          serviceItems: ['Service item 01', 'Service item 02'],
                          servicePrices: [100, 0],
                        ),
                        const SizedBox(height: 12),
                        const Divider(thickness: 1),
                        const SizedBox(height: 12),
                        const OrderItem(
                          isSelected: false,
                          productName: 'Products Name',
                          quantity: 30,
                          pricePerUnit: 50,
                          serviceItems: ['Service item 01'],
                          servicePrices: [0],
                        ),
                        const SizedBox(height: 24),
                        const Divider(thickness: 1),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sub Total',
                                style: TextStyle(fontSize: isTablet ? 18 : 16)),
                            Text('₹ 3100',
                                style: TextStyle(
                                    fontSize: isTablet ? 18 : 16,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Discount',
                                style: TextStyle(
                                    fontSize: isTablet ? 18 : 16,
                                    color: Colors.red)),
                            Text('- ₹ 120',
                                style: TextStyle(
                                    fontSize: isTablet ? 18 : 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Divider(thickness: 2),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Amount',
                                style: TextStyle(
                                    fontSize: isTablet ? 20 : 18,
                                    fontWeight: FontWeight.bold)),
                            Text('₹ 2980',
                                style: TextStyle(
                                    fontSize: isTablet ? 20 : 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle Return action
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[700],
                              padding: EdgeInsets.symmetric(vertical: 16),
                              textStyle: TextStyle(fontSize: isTablet ? 18 : 16),
                            ),
                            child: const Text('Return',
                                style: TextStyle(color: Colors.white)),
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

class OrderItem extends StatelessWidget {
  final bool isSelected;
  final String productName;
  final int quantity;
  final double pricePerUnit;
  final List<String> serviceItems;
  final List<double> servicePrices;

  const OrderItem({
    super.key,
    required this.isSelected,
    required this.productName,
    required this.quantity,
    required this.pricePerUnit,
    required this.serviceItems,
    required this.servicePrices,
  });

  @override
  Widget build(BuildContext context) {
    final isTablet = MediaQuery.of(context).size.width > 600;
    final productTotal = quantity * pricePerUnit;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              value: isSelected,
              onChanged: (bool? value) {
                // Handle checkbox change
              },
            ),
            const SizedBox(width: 8),
            const SizedBox(
              width: 50,
              height: 50,
              child: Placeholder(), // Replace with actual product image
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(productName,
                  style: TextStyle(fontSize: isTablet ? 18 : 16)),
            ),
            Text('$quantity', style: TextStyle(fontSize: isTablet ? 16 : 14)),
            const SizedBox(width: 16),
            Text('1 x ${pricePerUnit.toStringAsFixed(0)}',
                style: TextStyle(fontSize: isTablet ? 16 : 14)),
            const Spacer(),
            Text('₹ ${productTotal.toStringAsFixed(0)}',
                style: TextStyle(
                    fontSize: isTablet ? 18 : 16,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(serviceItems.length, (index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(serviceItems[index],
                      style: TextStyle(fontSize: isTablet ? 16 : 14)),
                  const Spacer(),
                  Text(servicePrices[index] > 0 ? '₹ ${servicePrices[index].toStringAsFixed(0)}' : 'Free',
                      style: TextStyle(fontSize: isTablet ? 16 : 14)),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.maybePop(context);
      },
      child: const Icon(Icons.arrow_back),
    );
  }
}