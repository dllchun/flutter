import 'package:flutter/material.dart';

class landingPage extends StatelessWidget {
  const landingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 500,
              child: PageView.builder(
                itemCount: 4,
                itemBuilder: ((context, index) => Container(
                      margin: EdgeInsets.only(
                        right: 10,
                        left: 10,
                        top: 20,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/img01.jpg"),
                        ),
                        color: index % 2 == 0 ? Colors.pink : Colors.cyan,
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: index % 2 == 0
                            ? Text("Organise your life")
                            : Text("Organise your life2"),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
