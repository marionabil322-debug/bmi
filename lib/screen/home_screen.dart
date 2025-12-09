import 'package:flutter/material.dart';
import 'package:three_project/screen/result_screen.dart';
import 'package:three_project/widgets/counter_container.dart';
import 'package:three_project/widgets/custom_app_bar.dart';
import 'package:three_project/widgets/gender_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isaMale = true;
  int height = 150;
  int weight = 100;
  int age = 21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 20,
          children: [
            //gender row
            Row(
              children: [
                GenderBox(
                  title: 'Male',
                  icon: Icons.male,
                  isActive: isaMale,
                  onTap: () {
                    setState(() {
                      isaMale = true;
                    });
                  },
                ),
                SizedBox(width: 12),
                GenderBox(
                  title: 'Female',
                  icon: Icons.female,
                  isActive: !isaMale,
                  onTap: () {
                    setState(() {
                      isaMale = false;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),

            //height container
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff333244),
              ),
              child: Column(
                spacing: 20,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: height.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 50,
                          ),
                        ),
                        TextSpan(text: 'cm', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  Slider(
                    max: 300,
                    value: height.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                    activeColor: Color(0xffE83D67),
                    inactiveColor: Colors.white,
                  ),
                ],
              ),
            ),

            //age row
            Row(
              children: [
                CounterContainer(
                  title: 'Weight',
                  value: weight,
                  increcement: () {
                    if (weight > 1) {
                      setState(() {
                        weight--;
                      });
                    }
                  },
                  decrecement: () {
                    setState(() {
                      weight--;
                    });
                  },
                ),
                SizedBox(width: 12),
                CounterContainer(
                  title: 'Age',
                  value: age,
                  increcement: () {
                    setState(() {
                      age++;
                    });
                  },
                  decrecement: () {
                    setState(() {
                      age--;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ResultScreen()),
          );
        },
        child: Container(
          height: 90,
          color: Color(0xffE83D67),
          alignment: Alignment.center,
          child: Text(
            'Calculate',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
