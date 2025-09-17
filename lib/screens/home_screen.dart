import 'package:flutter/material.dart';
import 'package:instagram_ui/const/colors.dart';
import 'package:instagram_ui/screens/direct_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt_outlined),
          iconSize: 30,
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              " Instagram",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(Icons.send, size: 28),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DirectScreen(),));
                });
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: width * 0.04),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: COLORS.UnWatchedStory,
                          width: 2,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/white-cat.jpg',
                          width: width * 0.145,
                          height: height * 0.065,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text("Your Story"),
                  ],
                ),
                SizedBox(width: width * 0.04),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: COLORS.UnWatchedStory,
                          width: 2,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/sports.jpg',
                          width: width * 0.145,
                          height: height * 0.065,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text("karenne"),
                  ],
                ),
                SizedBox(width: width * 0.04),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: COLORS.UnWatchedStory,
                          width: 2,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/family.jpg',
                          width: width * 0.145,
                          height: height * 0.065,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text("peach_122"),
                  ],
                ),
                SizedBox(width: width * 0.04),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: COLORS.UnWatchedStory,
                          width: 2,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/friends.jpg',
                          width: width * 0.145,
                          height: height * 0.065,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text("brownie1122"),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Divider(thickness: 0.3, color: Colors.black12),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                  child: SizedBox(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: COLORS.UnWatchedStory,
                                width: 2,
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/sports.jpg',
                                width: width * 0.09,
                                height: height * 0.040,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text("karenne"),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Image.asset(
                        "assets/images/Turkish-Angora-cover.jpg",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border, size: 30),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.mode_comment_outlined, size: 30),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send_rounded, size: 30),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(210, 0, 0, 0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.bookmark_border_outlined, size: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: ListTile(
                    title: Text(
                      "karenne",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        children: [
                          TextSpan(text: "This Picture Taken By, "),
                          TextSpan(
                            text: " @bosbos_2025",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: COLORS.UnWatchedStory,
                                    width: 2,
                                  ),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/family.jpg',
                                    width: width * 0.09,
                                    height: height * 0.040,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text("peach_122"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                          child: Image.asset("assets/images/lifestyle.webp"),
                        ),
                      ],
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border, size: 30),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mode_comment_outlined, size: 30),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.send_rounded, size: 30),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(210, 0, 0, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.bookmark_border_outlined,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: ListTile(
                        title: Text(
                          "peach_122",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 14),
                            children: [
                              TextSpan(text: "Studying with "),
                              TextSpan(
                                text: " @brawnie1122",
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                              TextSpan(text: " is soooo funny 😻!!!"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
