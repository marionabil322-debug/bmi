import 'package:flutter/material.dart';

class CounterContainer extends StatelessWidget {
  final String title;
  final int value;
  final void Function()? increcement;
  final void Function()? decrecement;

  const CounterContainer({
    super.key,
    required this.title,
    required this.value,
    this.increcement,
    this.decrecement,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff333244),
        ),
        child: Column(
          children: [
            Text(title),
            SizedBox(height: 5),
            Text(value.toString(), style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton.small(
                  key: UniqueKey(),
                  onPressed: increcement,
                  backgroundColor: Color(0xff888C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.add),
                ),
                FloatingActionButton.small(
                  key: UniqueKey(),
                  onPressed: decrecement,
                  backgroundColor: Color(0xff888C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
