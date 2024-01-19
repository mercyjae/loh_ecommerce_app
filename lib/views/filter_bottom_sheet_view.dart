import 'package:flutter/material.dart';


import '../enum/filter_criteria.dart';
import 'filter_item.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
      child: Column (
        children: [
          const SizedBox(height: 12.0,) ,
          Container(
            width: 50,
            height: 5,
            decoration: ShapeDecoration(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          const SizedBox(height: 1.0,),
          Text(
            'Filter or Sort by',
            // style: GoogleFonts.poppins(
            //   color:Colors.black,
            //   fontSize: 20,
            //   fontWeight: FontWeight.w600,
            // ),
          ),
          const SizedBox(height: 29.0,),
          FilterItem(
              title: "Popular",
              onTap: (){
                Navigator.pop(context, FilterCriteria.popularity);
              }
          ),
          FilterItem(
              title: "Newest",
              onTap: (){
                Navigator.pop(context, FilterCriteria.newest);
              }
          ),
          FilterItem(
              title: "Customer review",
              onTap: (){
                Navigator.pop(context, FilterCriteria.review);
              }
          ),
          FilterItem(
              title: "Price lowest",
              onTap: (){
                Navigator.pop(context, FilterCriteria.lowPrice);
              }
          ),
          FilterItem(
              title: "Price highest",
              onTap: (){
                Navigator.pop(context, FilterCriteria.highPrice);
              }
          ),
        ],
      ),
    );
  }
}