import 'package:codetodo/constants/colors.dart';
import 'package:codetodo/widgets/todo_items.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kcBGColor,
        appBar: _buildAppBar(),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                searchBox(),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top:50,
                          bottom: 20,
                        ),
                        child: const Text(
                          'All ToDos ',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          )
                        ),
                      ),
                      ToDoItem(),
                      ToDoItem(),
                      ToDoItem(),
                      ToDoItem(),
                      ToDoItem(),
                      ToDoItem(),
                    ],
                  ),
                ),


              ],
            )
        )
    );
  }

  Widget searchBox() {
    return Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: kcBlack,
                      size: 20,
                    ),
                    prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
                    border: InputBorder.none,
                    hintText: "Search Task",
                    hintStyle: TextStyle(color: kcGrey),


                  ),
                ),
              );
  }

  AppBar _buildAppBar() {
    return AppBar(
          backgroundColor: kcBGColor,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu,
                color: kcBlack,
                size: 30,
              ),
              Container(
                  height: 40,
                  width: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/avatar.jpeg', fit: BoxFit.cover,),
                  )),
            ],
          ));
  }
}
