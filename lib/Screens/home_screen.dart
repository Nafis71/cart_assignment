import 'package:cart_assignment/Models/card_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return Container(
            margin: const EdgeInsets.all(15.00),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Wrap(
                  alignment: WrapAlignment.start,
                  children: [
                    Text(
                      "My Bag",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: contents.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        height: screenHeight * 0.15,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.00),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.05),
                              blurStyle: BlurStyle.normal,
                              blurRadius: 10,
                              spreadRadius: 2,
                              offset: const Offset(0, 2),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width * 0.34,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10.00),
                                    bottomLeft: Radius.circular(10.00)),
                                color: const Color(0xFFE3E3E3),
                                image: DecorationImage(
                                    image:
                                        AssetImage(contents[index].dressImage),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(11.00),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Wrap(
                                          children: [
                                            Text(
                                              contents[index].dressName,
                                              style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Wrap(
                                          alignment: WrapAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.more_vert,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: Wrap(
                                        children: [
                                          Wrap(
                                            children: [
                                              const Text(
                                                "Color:",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                contents[index].dressColor,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              const Text(
                                                "Size:",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                contents[index].dressSize,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          // margin: const EdgeInsets.only(
                                          //     bottom: 5, right: 20),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black12
                                                    .withOpacity(0.05),
                                                blurStyle: BlurStyle.normal,
                                                blurRadius: 15,
                                                spreadRadius: 5,
                                                offset: const Offset(0, 10),
                                              )
                                            ],
                                          ),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.remove,
                                              color: Colors.grey,
                                              size: 26,
                                            ),
                                          ),
                                        ),
                                        const Wrap(
                                          children: [
                                            Text(
                                              "1",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          // margin: const EdgeInsets.only(
                                          //     bottom: 5, right: 20, left: 20),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black12
                                                    .withOpacity(0.05),
                                                blurStyle: BlurStyle.normal,
                                                blurRadius: 15,
                                                spreadRadius: 5,
                                                offset: const Offset(0, 10),
                                              )
                                            ],
                                          ),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.add,
                                              color: Colors.grey,
                                              size: 26,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Wrap(
                                              children: [
                                                Text(
                                                  "${contents[index].dressPrice}\$",
                                                  style: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            children: [
                              Text(
                                "Total amount",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.9,
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            children: [
                              Text(
                                "124\$",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.9,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: SizedBox(
                          width: screenWidth * 0.9,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFDB3022),
                                elevation: 5,
                                shadowColor: Colors.red,
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                            onPressed: () {},
                            child: const Text("CHECK OUT"),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
