import 'package:flutter/material.dart';
import 'package:sample/FigmaPage/UtilsPage/Utils.dart';

class PlaceOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
          },
        ),
        title: Text('Shopping Bag'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Item
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    FigmaImage.CausalBearPhoto,
                    width: screenWidth * 0.3,
                    height: screenWidth * 0.3,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Women's Casual Wear",
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Checked Single-Breasted Blazer'),
                        Row(
                          children: [
                            Text('Size 42'),
                            Icon(Icons.arrow_drop_down),
                            SizedBox(width: screenWidth * 0.04),
                            Text('Qty 1'),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                        Text('Delivery by 10 May 2XXX'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              // Apply Coupons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.discount),
                      Text('Apply Coupons'),
                    ],
                  ),
                  Text('Select',style: TextStyle(color: Colors.red),),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              // Order Payment Details
              Text(
                'Order Payment Details',
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              // Order Amounts
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order Amounts'),
                  Text('₹7,000.00'),
                ],
              ),
              // Convenience
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Convenience'),
                      Text(
                        '    Know More',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  Text(
                    'Apply Coupon',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              // Delivery Fee
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery Fee'),
                  Text('Free',style: TextStyle(color: Colors.red),),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              // Order Total
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Total',
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '₹7,000.00',
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              // EMI Available
              Row(
                children: [
                  Text(
                    'EMI Available',
                    style: TextStyle(color: Colors.blue),
                  ),
                  Text(
                    'Details',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              // Bottom Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '₹7,000.00',
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Proceed to Payment
                    },
                    child: Text('Proceed to Payment',style: TextStyle(color:Colors.white),),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.08,
                        vertical: screenHeight * 0.015,
                      ),
                      textStyle: TextStyle(fontSize: screenWidth * 0.04),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                'View Details', 
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}