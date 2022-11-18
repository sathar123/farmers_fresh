



import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Review_Slider extends StatelessWidget {

  List<Map>  Reviewdata = [
    { "id" : 0,
      "image" : "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
      "name": "Hiroko Emerson",
      "job" : "CEO, Raj Tech",
      "text": "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    },
    { "id" : 1,
      "image" : "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg",
      "name": "Nash Alvarado",
      "job" : "CTO, Gems",
      "text": "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" The Extremes of Good and Evil by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32."
    },
    { "id" : 2,
      "image" : "https://images.unsplash.com/photo-1599834562135-b6fc90e642ca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJlYXJkZWR8ZW58MHx8MHx8&w=1000&q=80",
      "name": "Matthew Burks",
      "job" : "CEO, Tech Park",
      "text": 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
          autoPlayInterval: Duration(seconds: 5),

            viewportFraction: 1,
         autoPlay: true,
            enlargeCenterPage: false
        ),
      itemCount: Reviewdata.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          var data = Reviewdata.firstWhere((element) => element["id"] == itemIndex);
        return  Padding(padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Container(
          padding: EdgeInsets.all(8),
          height: 25.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
              border: Border.all(width: .5,color: Colors.grey)
          ),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(data["image"]),
                ),
                title: Text(data['name'],style: TextStyle(fontSize: 15.sp,color: Colors.green,fontWeight: FontWeight.bold),),
                subtitle: Text(data['job'],style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.code,color: Colors.grey,),
              ),
              Expanded(child: Text(data['text'],style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),))
            ],
          ),

        ),);
      }

    );
  }
}
