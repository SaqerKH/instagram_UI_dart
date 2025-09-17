import 'package:flutter/material.dart';
import 'package:instagram_ui/const/colors.dart';
import 'package:instagram_ui/models/user_model.dart';

class DirectScreen extends StatefulWidget {
  const DirectScreen({super.key});

  @override
  State<DirectScreen> createState() => _DirectScreenState();
}

class _DirectScreenState extends State<DirectScreen> {
  List<UserModel> users = [
    UserModel(
        id: 1,
        name: "Karenn",
        imageUrl: "assets/images/sports.jpg",
        message: "Hi bosbos , are you free today ?"
    ),
    UserModel(
        id: 2,
        name: "brownie1122",
        imageUrl: "assets/images/friends.jpg",
        message: "like my last post please 😽!"
    ),
    UserModel(
        id: 3,
        name: "peach",
        imageUrl: "assets/images/family.jpg",
        message: "Miss you very much bosbos"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: COLORS.DirectBar,
        surfaceTintColor: COLORS.DirectBar,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(" bosbos_2025", style: TextStyle(fontWeight: FontWeight.w500)),
            Icon(Icons.arrow_drop_down_sharp),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(Icons.add, size: 28),
              onPressed: () {
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: width*0.85,
              height: 35,
              child: TextField(
                decoration: InputDecoration(
                  hint: Row(
                    children: [
                      Icon(Icons.search,color: COLORS.WatchedStory,),
                      Text(" Search", style: TextStyle(color: COLORS.WatchedStory, fontWeight: FontWeight.w500 , fontSize: 18),),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.black12,
                  contentPadding: EdgeInsets.fromLTRB(6, 12, 0, 0)
                ),
              ),
            ),
          ),
          Expanded(child:Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  child: Container(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(users[index].imageUrl ?? ""),
                      ),
                      title: Text(users[index].name ?? ""),
                      subtitle: Text(users[index].message ?? ""),
                    ),
                  ),
                );
              },
            ),
          ), )
        ],
      ),
    );
  }
}
