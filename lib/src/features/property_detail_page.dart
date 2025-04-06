import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:real_state_app/src/models/property_model.dart';

class PropertyDetailPage extends StatefulWidget{
  const PropertyDetailPage({super.key, required this.property});
  final PropertyModel property;

  @override
  State<PropertyDetailPage> createState() => _PropertyDetailPageState();
}

class _PropertyDetailPageState extends State<PropertyDetailPage> {
  int selectedImageIndex = 0;

  bool _isVisible = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() => _isVisible = true);
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox.expand(
            child: CachedNetworkImage(imageUrl: widget.property.images[selectedImageIndex], fit: BoxFit.cover,),
          ),
          Positioned(
            left: 20,
            child: SizedBox(
              height: size.height*0.4,
              width: 55,
              child:ListView.builder(
                  itemCount: widget.property.images.length,
                  itemBuilder: (ctx, index){
                    bool isSelected = selectedImageIndex == index;
                    return GestureDetector(
                      onTap: (){
                        setState(()=> selectedImageIndex = index);
                      },
                      child: Container(
                        height: 55,
                        width: 55,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: isSelected ? Colors.white : Colors.transparent)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: CachedNetworkImage(imageUrl: widget.property.images[index], fit: BoxFit.cover,),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 800),
            curve: Curves.easeInOut,
            bottom: _isVisible ? 0 : -size.height, // Moves up
            left: 0,
            right: 0,
            child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                height: size.height * 0.68, // Shrinks in size
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    // Card with rounded top
                    ClipPath(
                      clipper: RoundedTopClipper(),
                      child: Container(
                        width: size.width,
                        padding: EdgeInsets.only(top: 160, left: 20, right: 20, bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              widget.property.location,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on, size: 16, color: Colors.grey),
                                SizedBox(width: 4),
                                Text(widget.property.locationTitle, style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Description",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              widget.property.description,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 15),

                            // Icons Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildFeatureIcon(Icons.bed, "Bedroom", "2"),
                                _buildFeatureIcon(Icons.bathtub, "Bathroom", "2"),
                                _buildFeatureIcon(Icons.chair, "Sitting Area", "2"),
                                _buildFeatureIcon(Icons.kitchen, "Kitchen", "2"),
                              ],
                            ),

                            SizedBox(height: 20),
                            // Price and Button
                            Padding(
                              padding: const EdgeInsets.only(bottom: 18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$${NumberFormat("#,##0").format(widget.property.price)}',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                    ),
                                    onPressed: () {},
                                    child: Text("Book Now", style: TextStyle(color: Colors.white)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
            ),
          ),

        ],
      )
    );
  }

  Widget _buildFeatureIcon(IconData icon, String label, String count) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Icon(icon, color: Colors.black),
        ),
        SizedBox(height: 4),
        Text(count, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(label, style: TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }
}

// Clipper for Rounded Top Shape
class RoundedTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double curveHeight = size.width * 0.5;

    path.moveTo(0, curveHeight);
    path.quadraticBezierTo(size.width / 2, 0, size.width, curveHeight);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}