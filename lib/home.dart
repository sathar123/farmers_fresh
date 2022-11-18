
import 'package:farmers_fresh/utils/Grid_cat.dart';
import 'package:farmers_fresh/utils/List_Category.dart';
import 'package:farmers_fresh/utils/Review_Slider.dart';
import 'package:farmers_fresh/utils/Slider.dart';
import 'package:farmers_fresh/utils/brand_row.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
         slivers: [
           SliverAppBar(
             backgroundColor: Color(0xff009318),
             title: Text('FARMERS FRESH ZONE',style: TextStyle(fontWeight: FontWeight.w900,letterSpacing: 1),),
             actions: [
               Row(children: [
                 Icon(Icons.location_on_outlined),
                 Text('Kochi',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
                 Icon(Icons.keyboard_arrow_down)
               ],)

             ],
             bottom: PreferredSize(
               preferredSize: Size.fromHeight(5.h),
               child: Padding(
                 padding:  EdgeInsets.all(1.h),
                 child: Container(
                   height: 4.h,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(8),

                   ),
                   child: Center(
                     child: TextField(

                       decoration: InputDecoration(
                         border: InputBorder.none,

                         hintText: 'Search for Vegetables, Fruits ..',
                         prefixIcon: Icon(Icons.search,size: 18,)


                       ),
                     ),
                   ),
                 ),
               ),
             )
           ),
          SliverList(delegate: SliverChildListDelegate([
            Container(
              height: 7.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListCategory(title: 'VEGETABLES',),
                  ListCategory(title: 'FRUITS'),
                  ListCategory(title: 'EXOTIC'),
                  ListCategory(title: 'FRESH CUTS'),
                  ListCategory(title: 'NURITION CHARGERS'),
                  ListCategory(title: 'PACKED FLAVORS'),
                  ListCategory(title: 'GOURMET SALADS')

                ],
              ),
            ),
           ImgSlider(),
            SizedBox(height: 2.h,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 2.h),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.green.withOpacity(.5))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.timer,size: 30,color: Colors.green,),
                        SizedBox(height: 1.h,),
                        Text('30 MINS POLICY'),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.send_to_mobile_outlined,size: 30,color: Colors.green,),
                      SizedBox(height: 1.h,),
                      Text('TRACEBALITY'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.landscape,size: 30,color: Colors.green,),
                      SizedBox(height: 1.h,),
                      Text('LOCAL SOURCING'),
                    ],
                  )
                ],
              ),
            ),
            ),
          SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Shop By Category',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),

            ),
            grid_cat(),

            Divider(thickness: 5,),
            Container(
              height: 15.h,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://www.orchidsinternationalschool.com/wp-content/uploads/2020/10/Puberty.jpg'),fit: BoxFit.fill)
              ),
            ),
            Divider(thickness: 5,),
            SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Best Selling Products',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),),
            ),
            SizedBox(height: 2.h,),
            
            ListView(
              physics: ScrollPhysics(),
              padding: EdgeInsets.all(2.h),
              shrinkWrap: true,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 28.h,
                      width: 44.w,
                      decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                      child: Column(
                        children: [
                          Container(
                            height: 12.h,
                            width: 45.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage('https://www.producemarketguide.com/sites/default/files/Commodities.tar/Commodities/carrots_commodity-page.png'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 8.h,
                            width: 45.w,
                            padding: EdgeInsets.only(left: 5),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Carrot',style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('\u{20B9}49',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 1.h,),
                              Text('0.50 Kg',style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(width: 6.h,),
                              ElevatedButton(onPressed: (){}, child: Text('ADD'),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),)
                            ],
                          ),


                        ],
                      ),
                    ),


                    Container(
                      height: 28.h,
                      width: 44.w,
                      decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                      child: Column(
                        children: [
                          Container(
                            height: 12.h,
                            width: 45.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage('https://www.farmersfz.com/assets/public/vegimg/SV.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 8.h,
                            width: 45.w,
                            padding: EdgeInsets.only(left: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Salad Verde',style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('\u{20B9}129',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 1.h,),
                              Text('1.00 Box',style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(width: 5.h,),
                              ElevatedButton(onPressed: (){}, child: Text('ADD'),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),)
                            ],
                          ),


                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 1.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25.h,
                      width: 44.w,
                      decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                      child: Column(
                        children: [
                          Container(
                            height: 10.h,
                            width: 45.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage('https://resources.markon.com/sites/default/files/pi_photos/Broccoli_Florets_Hero.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 8.h,
                            width: 45.w,
                            padding: EdgeInsets.only(left: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Broccoli Florets 200gm',style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('\u{20B9}119',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 1.h,),
                              Text('1.00 Box',style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(width: 5.h,),
                              ElevatedButton(onPressed: (){}, child: Text('ADD'),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),)
                            ],
                          ),


                        ],
                      ),
                    ),
                    Container(
                      height: 25.h,
                      width: 44.w,
                      decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                      child: Column(
                        children: [
                          Container(
                            height: 10.h,
                            width: 45.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage('https://img.freepik.com/premium-photo/banana-bunch-isolated_88281-1027.jpg?w=2000'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 8.h,
                            width: 45.w,
                            padding: EdgeInsets.only(left: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Banana Nendran',style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('\u{20B9}41',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 1.h,),
                              Text('0.50 Kg',style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(width: 6.h,),
                              ElevatedButton(onPressed: (){}, child: Text('ADD'),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),)
                            ],
                          ),


                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),

            Container(
              child: Center(
                child: Text('VIEW MORE',style: TextStyle(fontSize: 15.sp,color: Colors.green,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 1.h,),
            Divider(thickness: 5,),
            Container(
              child: Row(
                children: [
                  Expanded(

                    child:  Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('We are working towards safe food - which are Nutri - Locked and hyggienic as well',style: TextStyle(fontSize: 14.sp,color: Colors.brown.shade500),),
                        Text.rich(
                            TextSpan(
                                text: 'READ MORE',style: TextStyle(fontWeight: FontWeight.bold),
                                children: [
                                  WidgetSpan(child: SizedBox(width: 8,)),
                                  WidgetSpan(child: Icon(Icons.play_circle_fill_outlined,color: Colors.green,))

                                ]
                            )
                        ),

                      ],
                  ),
                    ),),

                  Row(
                    children: [
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQhQb4YtH6vfv5OCFI1wDwKpzJuGO1j6hcOYMqdF5lSSJ9IYlJc2qkxqRKfv5_1tNSEs0&usqp=CAU',width: 150,)

                    ],
                  )

                ],
              ),
              
            ),
            Divider(thickness: 5,),
            SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('What Our Customers Say?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp)),
            ),
            SizedBox(height: 2.h,),
            Review_Slider(),

            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                      height: 15.h,
                      child: Center(child: Text('This Kochi-based- farm-to-fork online marketplace is connecting farmers directly to customers',textAlign: TextAlign.center,))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                   Brand_row(img: 'https://m.economictimes.com/thumb/msid-67639654,width-1200,height-900,resizemode-4,imgsize-35219/et.jpg'),
                    Brand_row(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFRGTI4ieZ1F1KRIs8hHzDjoS8nIcCDY9XUg&usqp=CAU'),
                    Brand_row(img: 'https://play-lh.googleusercontent.com/DJ23Am5KeMZlDBhRzooiavqQdh4iiVa_mEaJYt48dK29BxEN58Ng8EONzQaOuSh914vn',),
                    Brand_row(img: 'https://play-lh.googleusercontent.com/k0A88RrzsPqX1D75am5_bOJ3M2Y0R0fXi7gu4BfgmS2GkuUNvFnSLMmCaLBK0BhQ9Es')
                  ],)
                ],
              ),
            ),

            Divider(thickness: 10,),
            SizedBox(height: 3.h,),
            Padding(padding: EdgeInsets.only(left: 8),child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Get To Know Us',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp,color: Colors.black.withOpacity(.7)),),
                SizedBox(height: 2.h,),
                Text('About  |  Our Farmers  |  Blog',style: TextStyle(color: Colors.grey,letterSpacing: 1),),
                SizedBox(height: 2.h,),
                Text('Useful Links',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp,color: Colors.black.withOpacity(.7)),),
                SizedBox(height: 1.h,),
                Text('Privacy  |  Return & Refund Policy  |  Terms & Condition',style: TextStyle(color: Colors.grey,)),

                SizedBox(height: 2.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.h,vertical: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(FontAwesomeIcons.twitter,color: Colors.grey,),
                      Icon(FontAwesomeIcons.youtube,color: Colors.grey,),
                      
                    Icon(FontAwesomeIcons.facebookF,color: Colors.grey,),
                      
                      Icon(FontAwesomeIcons.instagram,color: Colors.grey,)
                    ],
                  ),
                ),

                
              ],
            ),),
            Container(
              color: Color(0xFF00BB1F),
              height: 10.h,
              child: Center(child: Text('Copyright @ 2022 Farmers fresh Zone.\n All Rights Reserved. V 2.40.21',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),),
            )

            





          ]))
         ],

      ),
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'HOME',backgroundColor: Colors.lightGreen),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: 'CART'),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user),label: 'ACCOUNT')
      ],
        
      ),


    );
  }
}




