import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 350,
    
      padding: const EdgeInsets.all(7.0),
    
   child:  Column(
                  children: [
                    TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:  Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search...'.tr,
                        suffixIcon: const Icon(Icons.search),
                      ),
                    ),
                    ]
   ),
                    );
    
    
    
    
    
    
    // Container(
    //   width: 350,
    //   height: 52,
    //   padding: const EdgeInsets.all(7.0),
    //   decoration: BoxDecoration(
    //    borderRadius: BorderRadius.circular(25.0),
    //     border: Border.all(color: Colors.grey),
    //     color: Colors.white.withOpacity(0.9),
    //   ),
    //   child: Row(children: [
    //     Icon(
    //       Icons.search,
    //       color: Colors.grey[600],
    //       size: 23,
    //     ),
    //     const SizedBox(
    //       width: 16.0,
    //     ),
    //     Text(
    //       "Search Product",
    //       style: Theme.of(context).textTheme.bodyText1,
    //     )
    //   ]),
   
     
   // );
  }
}
