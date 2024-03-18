import 'package:flutter/material.dart';
import 'package:sayur_ui_app/core.dart';
import 'package:sayur_ui_app/module/category/widget/cardCategory.dart';
import '../controller/category_controller.dart';

class CategoryView extends StatefulWidget {
  
  const CategoryView({
    Key? key,
    
  }) : super(key: key);

  Widget build(context, CategoryController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Kategori",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: [
              const Center(
                child: Text("5 item"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey[400]!,
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: const InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "Cari disini",
                          hintStyle: TextStyle(fontWeight: FontWeight.w400),
                          hoverColor: Colors.transparent,
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.search,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 45.0,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  CardCategory(
                    title: "Sayuran",
                    url: 'assets/images/sayur.png',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CardCategory(
                    title: "Buah",
                    url: 'assets/images/buah.png',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CardCategory(
                    title: "Daging",
                    url: 'assets/images/daging.png',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CardCategory(
                    title: "Lauk",
                    url: 'assets/images/lauk.png',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CardCategory(
                    title: "Bumbu",
                    url: 'assets/images/bumbu.png',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CategoryView> createState() => CategoryController();
}
