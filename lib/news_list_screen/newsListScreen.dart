import 'package:flutter/material.dart';

class newsListScreen extends StatefulWidget {
  const newsListScreen({Key? key}) : super(key: key);

  @override
  State<newsListScreen> createState() => _newsListScreenState();
}

class _newsListScreenState extends State<newsListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "news",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Row(
                        children: [],
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
