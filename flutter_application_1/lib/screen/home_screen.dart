import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Isegye Idol PlayList"),
        backgroundColor: Colors.black45,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  List<String> name = ['아이네', '징버거', '릴파', '주르르', '고세구', '비챤'];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.deepPurple,
                        width: 8,
                      ),
                    ),
                    //GestureDetector 5_8 Detail Screen 참조
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              index: index,
                              name: name,
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/$index.png',
                            width: 350,
                            height: 350,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          if (index == 0)
                            Text(
                              name[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),
                          if (index == 1)
                            Text(
                              name[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber,
                              ),
                            ),
                          if (index == 2)
                            Text(
                              name[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo,
                              ),
                            ),
                          if (index == 3)
                            Text(
                              name[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                            ),
                          if (index == 4)
                            Text(
                              name[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          if (index == 5)
                            Text(
                              name[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          const Text(
                            'since 2021.08.26',
                            style: TextStyle(
                              color: Colors.lightBlue,
                            ),
                          ),
                          const Text(
                            'ISEGYE IDOL · イセゲアイドル',
                            style: TextStyle(
                              color: Colors.pink,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 70,
              height: 70,
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
