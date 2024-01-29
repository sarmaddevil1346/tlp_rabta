import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.red,
                    ),
                  ),
                  child: const Icon(Icons.person_2_outlined),
                ),
                const Column(
                  children: [
                    Text("Welcome"),
                    Text("Saadi"),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: Colors.black,
                      )),
                  child: const Icon(Icons.notifications_outlined),
                ),
              ],
            ),
            Container(
              height: 70,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Row(
                children: [
                  Text(
                    "TLP Candidate Symbol Search",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: const Row(
                children: [
                  Text(
                    "TLP Candidate Symbol Search",
                    style: TextStyle(color: Colors.black),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
            ),
            Spacer(),
            Expanded(
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person),
                        Text("Profile Status"),
                        Text("17%")
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
