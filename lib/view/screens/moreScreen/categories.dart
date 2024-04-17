import 'package:budget_tracker_app/utils/categoriesList.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/grid_view.dart';
import 'components/list_view.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Categories',
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isList = !isList;
              });
            },
            icon: (isList)
                ? const Icon(
              Icons.grid_view_rounded,
              color: Colors.white,
            )
                : const Icon(
              Icons.list,
              color: Colors.white,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: (isList)
          ? ListView.builder(
              itemBuilder: (context, index) => listviewBox(height, width,
                  categoriesList[index]['name'], categoriesList[index]['icon']),
              itemCount: categoriesList.length,
            )
          : GridView.builder(
              itemCount: categoriesList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 1,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => categoriesBox(height, width,
                  categoriesList[index]['name'], categoriesList[index]['icon']),
            ),
    );
  }
}
