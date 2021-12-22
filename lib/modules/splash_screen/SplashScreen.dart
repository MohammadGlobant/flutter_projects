
import 'package:flutter/material.dart';
import 'package:flutter_projects/modules/home/Home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2),()
    {
      Navigator.of(context).
      push(
          MaterialPageRoute(
              builder: (context) => Home()
          )
      );
    });
    return Container(
      width: double.infinity,
      color: Colors.deepOrange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("My First App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'Indies',
                  decoration: TextDecoration.none
              ),
            ),
          SizedBox(height: 20.0,),
          CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
        ],
      ),
    );
  }
}
