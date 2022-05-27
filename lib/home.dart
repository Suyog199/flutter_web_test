import 'package:flutter/material.dart';
import 'package:web_testing/application.dart';
import 'package:web_testing/routes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 128.0),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Application.router
                            .navigateTo(context, Routes1.listPage);
                      },
                      child: Container(
                        height: 200,
                        child: Center(
                          child: Text(
                            'Member and share',
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 124,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 200,
                        child: Center(
                          child: Text(
                            'Account',
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 124,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 200,
                        child: Center(
                          child: Text(
                            'Inventory',
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
