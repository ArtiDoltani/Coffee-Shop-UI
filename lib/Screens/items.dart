import 'package:coffee_shop/Models/items_model.dart';
import 'package:coffee_shop/Screens/single_item.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
     
      itemCount: items.length,
        gridDelegate:
             const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 150/195),
            physics:  const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            
        itemBuilder: (context, index) {
          return Container(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 8,
              horizontal: 13,
              ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff212325),
              boxShadow: [
              BoxShadow(
                 color: Colors.black.withOpacity(0.4),
                 blurRadius: 8,
                 spreadRadius: 1
              )

              ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Expanded(child: Center(child: InkWell(
                    onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SingleItemScreen(
                      singleItem: items[index]
                    )));

                    },
                    child: Image.asset(items[index].image, width: 120,height: 120,)))),
                Text(items[index].text, style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white, fontSize: 18),),
                const SizedBox(height: 8),
                Text("Best Coffee", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white60,),),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(items[index].price,style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white, fontSize: 18)),
                  Container(
                    //width: 30,height: 30,
                  decoration:BoxDecoration(color:const Color(0xffE57734),
                  borderRadius: BorderRadius.circular(20)
                   ),
                   child: const Icon(Icons.add, color: Colors.white, size: 25,)
                   )
                ],)
                ],
              ),
            ),
          );
        });
  }
}
