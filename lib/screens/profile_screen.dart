import 'package:flutter/material.dart';
import 'package:instagram_ui/const/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> postImages = [
      'assets/images/Turkish-Angora-cover.jpg',
      'assets/images/White-British-Longhair.jpg',
      'assets/images/white-cat.jpg',
      'assets/images/friends.jpg',
      'assets/images/sports.jpg',
      'assets/images/family.jpg',
      'assets/images/black-white.jpg'
    ];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.lock),
            Text(" bosbos_2025", style: TextStyle(fontWeight: FontWeight.w500)),
            Icon(Icons.arrow_drop_down_sharp),
          ],
        ),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 15), child: Icon(Icons.menu)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: COLORS.WatchedStory, width: 2),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/white-cat.jpg',
                          width: width * 0.24,
                          height: height * 0.11,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text("4", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("Posts"),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text("834K", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("Followers"),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text("3", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("Following"),
                    ],
                  ),
                ],
              ),

               SizedBox(height: 0),
               ListTile(
                title: Text(
                  "Bosbos Saqer",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    children: [
                       TextSpan(text: "Meow meow meow, "),
                      TextSpan(text: "@meow", style: TextStyle(color: Colors.blueAccent)),
                     TextSpan(text: "\nmeow meow meow"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Center(
                  child: SizedBox(
                    width: width * 0.84,
                    height: height * 0.036,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: COLORS.WatchedStory, width: 0.96),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: COLORS.WatchedStory, width: 2),
                          ),
                          child: const ClipOval(child: Icon(Icons.add, size: 30)),
                        ),
                        const Text("New"),
                      ],
                    ),
                    SizedBox(width: width * 0.04),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: COLORS.WatchedStory, width: 2),
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
                        const Text("Friends"),
                      ],
                    ),
                    SizedBox(width: width * 0.04),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: COLORS.WatchedStory, width: 2),
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
                        const Text("Childhood"),
                      ],
                    ),
                    SizedBox(width: width * 0.04),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: COLORS.WatchedStory, width: 2),
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
                        const Text("Family"),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  width: width,
                  height: height * 0.06,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: COLORS.WatchedStory, width: 1.5),
                      bottom: BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                  child: const Center(
                    child: Icon(Icons.grid_on, size: 35),
                  ),
                ),
              ),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                ),
                itemCount: postImages.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    postImages[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
