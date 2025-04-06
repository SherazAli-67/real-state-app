import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/src/app_data.dart';
import 'package:real_state_app/src/features/property_detail_page.dart';
import 'package:real_state_app/src/res/app_strings.dart';
import 'package:real_state_app/src/res/app_text_styles.dart';

class RealStatePage extends StatelessWidget{
  const RealStatePage({super.key});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       spacing: 15,
       children: [
         Row(
           spacing: 40,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Expanded(child: Text("Find Your Perfect Place", style: AppTextStyles.headingTextStyle,)),
             CircleAvatar(
               backgroundImage: CachedNetworkImageProvider(myProfileUrl),
             )
           ],
         ),
         Row(
           spacing: 20,
           children: [
             Expanded(child: TextField(
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide(color: Colors.grey)
                 ),
                 fillColor: Colors.grey[300],
                 prefixIcon: Icon(Icons.search_rounded, color: Colors.grey,),
                 hintText: "Search Place ...",
                 hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
               ),
             )),
             Container(
               padding: EdgeInsets.all(16),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.black
               ),
               child: Icon(Icons.filter_list_rounded, color: Colors.white,),
             )
           ],
         ),
         SizedBox(
           height: 30,
           width: double.infinity,
           child: ListView.builder(
               itemCount: AppData.categories.length,
               scrollDirection: Axis.horizontal,
               itemBuilder: (ctx, index) {
                 String category = AppData.categories[index];
                 return Padding(
                   padding: const EdgeInsets.only(right: 25.0),
                   child:
                       index == 1 ? Column(
                         children: [
                           Text(category, style: AppTextStyles.regularTextStyle.copyWith(color: Colors.black)),
                           CircleAvatar(
                             backgroundColor: Colors.black,
                             radius: 4,
                           )
                         ],
                       ) :
                   Text(category, style: AppTextStyles.regularTextStyle),
                 );
               }),
         ),
         Text("Best For You", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
         Expanded(child: CarouselSlider(
             items: AppData.properties.map((property){
               return GestureDetector(
                 onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> PropertyDetailPage(property: property)));
                 },
                 child: Card(
                   elevation: 1,
                   color: Colors.white,
                   child: Stack(
                     children: [
                       SizedBox.expand(
                         child: ClipRRect(
                             borderRadius: BorderRadius.circular(10),
                             child: CachedNetworkImage(imageUrl: property.images.first, fit: BoxFit.cover,)
                         ),
                       ),
                       Positioned(
                           left: 10,
                           bottom: 10,
                           child:
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Column(
                           spacing: 10,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               spacing: 5,
                               children: [
                                 Icon(Icons.location_on, color: Colors.white,),
                                 Text(property.location, style: AppTextStyles.regularTextStyle.copyWith(color: Colors.white),)
                               ],
                             ),
                             Text(property.locationTitle, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),),
                             Wrap(
                               children: property.services.map((service){
                                 return Container(
                                   padding: EdgeInsets.symmetric(horizontal: 10),
                                   margin: EdgeInsets.only(right: 10),
                                   decoration: BoxDecoration(
                                     color: Colors.grey[300],
                                     borderRadius: BorderRadius.circular(10)
                                   ),
                                   child: Text(service, style: AppTextStyles.regularTextStyle.copyWith(color: Colors.black)),
                                 );
                               }).toList(),
                             )
                           ],
                         ),
                       ))
                     ],
                   ),
                 ),
               );
             }).toList(),
             options: CarouselOptions(
               height: 400,
               aspectRatio: 16/9,
               viewportFraction: 0.8,
               initialPage: 0,
               enableInfiniteScroll: true,
               reverse: false,
               autoPlay: true,
               autoPlayInterval: Duration(seconds: 3),
               autoPlayAnimationDuration: Duration(milliseconds: 800),
               autoPlayCurve: Curves.fastOutSlowIn,
               enlargeCenterPage: true,
               enlargeFactor: 0.3,
               scrollDirection: Axis.horizontal,
             )
         )

         /*ListView.builder(
             itemCount: AppData.properties.length,
             itemBuilder: (ctx, index) {
               PropertyModel property = AppData.properties[index];
               return Card(
                 elevation: 1,
                 color: Colors.white,
                 child: Column(
                   children: [
                     ClipRRect(
                         borderRadius: BorderRadius.circular(10),
                         child: CachedNetworkImage(imageUrl: property.images.first, fit: BoxFit.cover,)
                     )
                   ],
                 ),
               );
         }),*/

         )
       ],
     ),
   );
  }

}