import 'package:flutter/material.dart';
import 'package:sample/FigmaPage/UtilsPage/Utils.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          '      CheckOut',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(FigmaImage.ProfilePhoto),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Personal Details',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Align(alignment: Alignment.topLeft,
                child: Text('   Email Address')),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 13,),
            Align(alignment: Alignment.topLeft,
                child: Text('   Password')),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            Align(alignment: Alignment.topRight,
                child: TextButton(onPressed: (){}, child: Text('Change Password',style: TextStyle(color: Colors.red),))
            ),
            Text('------------------------------------------------------------------------------'),
            SizedBox(height: 10,),
            Align(alignment: Alignment.topLeft,
                child: Text(' Business Address Details',style: TextStyle(color: Colors.black,fontSize: 25),)),
            SizedBox(height: 5,),
            Align(alignment: Alignment.topLeft,
                child: Text('   PinCode')),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                keyboardType: TextInputType.number ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 4,),
            Align(alignment: Alignment.topLeft,
                child: Text('   Address')),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 4,),
            Align(alignment: Alignment.topLeft,
                child: Text('   City')),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 4,),
            Align(alignment: Alignment.topLeft,
                child: Text('   State')),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 4,),
            Align(alignment: Alignment.topLeft,
                child: Text('   Country')),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),
            Text('--------------------------------------------------------------------------------'),
            SizedBox(height: 10,),
            Align(alignment: Alignment.topLeft,
                child: Text(' Bank Account Details',style: TextStyle(color: Colors.black,fontSize: 25),)),
            SizedBox(height: 4,),
            Align(alignment: Alignment.topLeft,
                child: Text('   Bank Account Number ')),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 4,),
            Align(alignment: Alignment.topLeft,
                child: Text('   Bank Holders Name')),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 4,),
            Align(alignment: Alignment.topLeft,
                child: Text('   IFSC Code')),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 340,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFFF83758), // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () {
                },
                child: Text('Save', style: TextStyle(fontSize: 27,color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}