

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class grid_cat extends StatelessWidget {
  var imglist = [
    'https://img.freepik.com/free-photo/top-close-up-view-tomatoes-table-three-red-ripe-tomatoes-wooden-grey-table_140725-117111.jpg?w=2000',
    'https://minnetonkaorchards.com/wp-content/uploads/2021/04/Health-Benefits-of-Pineapple.jpg.webp',
    'https://img1.exportersindia.com/product_images/bc-full/dir_75/2237061/exotic-vegetables-1556636.jpg',
    'https://images.herzindagi.info/image/2022/Sep/tips-to-cut-fruits-fast.jpg',
    'https://www.growingproduce.com/wp-content/uploads/2021/02/Pharaoh-Beans_Stokes-Seeds-864x576.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMEWeqwwOdQkHxbH3GUagOxbVJieYTHXrOQsqBLiv6HJvTCACa6TyZXqa4HopJE6SknxM&usqp=CAU',
    'https://static.toiimg.com/thumb/53520177.cms?imgsize=166316&width=800&height=800',
  ];
  var catname = [
    'Vegetables',
    'Fruits',
    'Exotic',
    'Fresh Cuts',
    'Nutrition Chargers',
    'Packed Flavors',
    'Gourmet Salads',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
physics: ScrollPhysics(),
        shrinkWrap: true,
        
        itemCount: imglist.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 1,mainAxisSpacing: 3), itemBuilder: (context,int index){
      return Card(elevation: 5,
        child: Container(

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Container(

                decoration: BoxDecoration(

                    image: DecorationImage(

                        image: NetworkImage(imglist[index])
                        ,fit: BoxFit.fill ),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))

                ),
                height: 10.h,
                width: 30.w,
              ),
              SizedBox(height: 2.h,),
              Text(catname[index])
            ],
          ),
        ),
      );
    });
  }
}