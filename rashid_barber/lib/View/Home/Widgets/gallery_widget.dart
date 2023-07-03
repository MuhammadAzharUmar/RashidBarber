
import 'package:flutter/material.dart';
import 'package:rashid_barber/Utils/colors.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 150,width: double.infinity,
                    child:Center(
                      child: ListView.builder(shrinkWrap: true,
                         scrollDirection: Axis.horizontal,
                         itemCount: 5,
                         itemBuilder: (context, index) {
                         return Container(
                           margin:const EdgeInsets.all(8),
                           height: 150,
                           width: 225,
                           decoration: BoxDecoration(
                             color: kCardBackground,
                             borderRadius: BorderRadius.circular(8),
                             image:const DecorationImage(image: AssetImage('assets/photo1.png'),fit: BoxFit.cover
                             )
                           ),
                         );
                      },),
                    )
                    );
  }
}
