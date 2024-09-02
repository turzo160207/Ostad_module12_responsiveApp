import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design_ostad/presentation/widgets/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        mobile: Scaffold(
          appBar: AppBar(
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('HUMMING\nBIRD'),
              ],
            ),
          ),
          drawer: _buildDrawer(),
          body: _bodyElements(),
        ),
        tablet: Scaffold(
          appBar: _bigScreenAppBars(),
          body: _bodyElements(),

        ),
        desktop: Scaffold(
          appBar: _bigScreenAppBars(),
          body: Row(
            children: [
              Expanded(
               flex: 2,
               child:
               Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Text(
                          'FLUTTER WEB.\nTHE BASICS',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Text(
                          'In this course we will go over the basics of using Flutter Web for development.Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, Modals and more.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1, // Flex factor 1
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your action here
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(80, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Adjust the radius here
                      ),
                      backgroundColor: Color(0xFF1cdf91),
                    ),
                    child: Text(
                      'Join Course',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

        )
    );
  }

  AppBar _bigScreenAppBars() {
    return AppBar(
          toolbarHeight: 100,
            title: null, // Disable the default title
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 40,left: 40), // Adjust the padding to position the title
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0), // Optional: Add left padding
                  child: Text(
                    'HUMMING\nBIRD.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
           actions: [
             TextButton(
               onPressed: () {
                 // Action for the first button
               },
               child: Padding(
                 padding: const EdgeInsets.all(16),
                 child: Text('Episodes',
                     style: TextStyle(
                         color: Colors.black
                     )
                 ),
               ),
             ),
             TextButton(
               onPressed: () {
                 // Action for the first button
               },
               child: Padding(
                 padding: const EdgeInsets.only(right: 16),
                 child: Text('About',
                     style: TextStyle(
                         color: Colors.black
                     )
                 ),
               ),
             ),

           ]

       );
  }

  Center _bodyElements() {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            //   SizedBox(
            //     height: 64,
            //   ),
              Text(
              'FLUTTER WEB.\nTHE BASICS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'In this course we will go over the basics of using Flutter Web for development.Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, Modals and more.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),

              ),
              SizedBox(
                height: 42,
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Adjust the radius here
                  ),
                  backgroundColor: Color(0xFF1cdf91),
                ),
                child: Text(
                    'Join Course',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        );
  }

  Drawer _buildDrawer() {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(0),
            bottomRight: Radius.circular(0)),
      ),
      child: Column(
        children: [
          ClipRRect(
            child: Container(
              width: double.infinity, // Ensures the header occupies the full width
              child: DrawerHeader(
                padding: EdgeInsets.zero, // Remove default padding
                decoration: BoxDecoration(
                  color: Color(0xFF1cdf91), // Background color of the header
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
                  children: [
                    Text(
                      'SKILL UP NOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ), // Add space between title and subtitle
                    Text(
                      'TAP HERE',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(18),
              children: [
                ListTile(
                  leading: Icon(Icons.videocam,
                    size: 40,
                  ),
                  title: Text('Episodes',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                ListTile(
                  leading: Icon(Icons.message,
                    size: 40,
                  ),
                  title: Text('About',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
