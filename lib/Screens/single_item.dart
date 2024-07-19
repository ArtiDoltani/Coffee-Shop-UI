import 'package:coffee_shop/Decoration/decoration.dart';
import 'package:coffee_shop/Models/items_model.dart';
import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  Items singleItem;
  SingleItemScreen({
    super.key,
    required this.singleItem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, left: 25, right: 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios)),
            Center(
                child: Image.asset(
              singleItem.image,
              height: 250,
            )),
            const SizedBox(
              height: 40,
            ),
            Text(
              "BEST COFFEE",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white60,
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              singleItem.text,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Colors.white,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF212325).withOpacity(0.5),
                      border: Border.all(color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "2",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Text(
                  singleItem.price,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Coffee is a major source of antioxidance in the diet.",
              style: TextStyle(
                color: Colors.white.withOpacity(0.4),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Volume: 60ml",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomContainer(
                    "Add to Cart",
                    const Color.fromARGB(255, 82, 77, 77).withOpacity(0.2),
                    180,
                    50,
                    () {}),
                UiHelper.CustomContainer("", const Color(0xffE57734), 50, 50,
                    () {}, Icons.favorite_border_outlined, true)
              ],
            )
          ]),
        ),
      ),
    );
    
  }
}
