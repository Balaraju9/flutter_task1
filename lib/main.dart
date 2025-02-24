
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,

      ],
      builder: (context) =>  MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {






  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Good Afternoon, prasad tnvd',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  size: 18,

                    Icons.arrow_drop_down_circle, color: Colors.black),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text(
                  '9618566951',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                  ),
                ),
                SizedBox(width: 6),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 9, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Prepaid',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications_none, color: Colors.black),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black12, // Grey border color
                              width: 1.5, // Border width
                            ),
                            borderRadius: BorderRadius.circular(8), // Optional: rounded corners
                          ),
                          child: Icon(Icons.mobiledata_off, color: Colors.black87),
                        ),

                        SizedBox(width: 8),
                        Text(
                          '-',
                          style: TextStyle(fontSize: 50, color: Colors.red),
                        ),
                        SizedBox(width: 8),
                        Container(
                          height: 35,
                          width: 2,
                          color: Colors.black12,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Pack',
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              'Expired',
                              style: TextStyle(color: Colors.red, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),


                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('View Pack'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.orange,
                            side: BorderSide(color: Colors.orange),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Recharge',style: TextStyle(color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                width: 360,
                color: Color(0xFFFFF1F0), // Light pink background from the image
                child: Row(
                  children: [
                    Icon(Icons.error_outline, color: Color(0xFFE63946)), // Red icon
                    SizedBox(width: 8),
                    Container(
                      height: 20,
                      width: 390 / 2,
                      child: Text(
                        'Uh-oh! Your plan has expired.',
                        style: TextStyle(
                          color: Color(0xFFE63946), // Red text
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(width: 70),
                    Text(
                      "Recharge",
                      style: TextStyle(
                        color: Color(0xFF1D3557), // Dark blue text for Recharge
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                height: 112,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'App Exclusive Offer',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),

                        Text(
                          'Applicable on recharges above Rs 249.',
                          style: TextStyle(fontSize: 12, color: Colors.black87),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'Check Now ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Icon(Icons.arrow_forward, size: 12, color: Colors.black),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("T&c apply",style: TextStyle(fontSize: 8),)
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                            color: Colors.deepOrangeAccent,
                            shadows: [
                              Shadow(
                                offset: Offset(2, 2), // Position of the shadow (x, y)
                                // Softness of the shadow
                                color: Colors.black, // Shadow color with transparency
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 4), // Space between number and text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 17,
                            ),
                            Text(
                              'Get',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '% OFF',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Quick Actions',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  quickActionButton(Icons.phone_android_outlined, 'Recharge'),
                  quickActionButton(Icons.sms, 'SMS'),
                  quickActionButton(Icons.email, 'Email'),
                  quickActionButton(Icons.lock, 'Lock'),
                  quickActionButton(Icons.account_balance_wallet, 'Book Fiber'),
                  quickActionButton(Icons.phone, '4G'),
                  quickActionButton(Icons.sms, 'SMS'),
                  quickActionButton(Icons.email, 'Games'),
                             ],
              ),
            ],
          ),
        )


            ],
          ),
        ),
      ),
    );
  }


}


  Widget quickActionButton(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 24, // Adjust the size of the circle
          backgroundColor: Colors.grey.shade100, // Grey background
          child: Icon(
            icon,
            size: 30,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );

  }

