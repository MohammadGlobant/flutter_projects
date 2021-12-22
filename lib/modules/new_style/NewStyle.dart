import 'package:flutter/material.dart';
import 'package:flutter_projects/modules/splash_screen/SplashScreen.dart';

class NewStyle extends StatefulWidget {
  const NewStyle({Key? key}) : super(key: key);
  @override
  _NewStyleState createState() => _NewStyleState();
}

class _NewStyleState extends State<NewStyle> {
  double _currentHeightValue = 20;
  double _currentWightValue = 70;
  double _currentAgeValue = 27;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 90.0,),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(30.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.deepOrange[900],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.person,size: 30.0,color: Colors.white,),
                            Text("Person",style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 25.0),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SplashScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.deepOrange[900],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.login,size: 30.0,color: Colors.white,),
                              Text("LogIn",style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.deepOrange[900],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Height",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0
                        ),
                      ),
                      Text("$_currentHeightValue",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0
                        ),
                      ),
                      Slider(
                      value: _currentHeightValue,
                      max: 100,
                      divisions: 5,
                      //label: _currentHeightValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentHeightValue = value;
                        });
                      },
                    ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.deepOrange[900]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("wight",style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white
                            ),),
                            Text("$_currentWightValue", style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0
                            ),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: IconButton(
                                        onPressed: (){
                                          setState(() {
                                            _currentWightValue--;
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        )
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange[800],
                                        borderRadius: BorderRadius.circular(30.0)
                                    ),
                                  ),
                                  const SizedBox(width: 5.0,),
                                  Container(
                                    child: IconButton(
                                        onPressed: (){
                                          setState(() {
                                            _currentWightValue++;
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange[800],
                                        borderRadius: BorderRadius.circular(30.0)
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.deepOrange[900]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Age",style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white
                            ),),
                            Text("$_currentAgeValue", style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0
                            ),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: IconButton(
                                        onPressed: (){
                                          setState(() {
                                            _currentAgeValue--;
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        )
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange[800],
                                        borderRadius: BorderRadius.circular(30.0)
                                    ),
                                  ),
                                  const SizedBox(width: 5.0,),
                                  Container(
                                    child: IconButton(
                                        onPressed: (){
                                          setState(() {
                                            _currentAgeValue++;
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange[800],
                                        borderRadius: BorderRadius.circular(30.0)
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.deepOrange[900],
              child: MaterialButton(
                onPressed: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => const SplashScreen()));
                },
                child: const Text("Go to App",style: TextStyle(
                  color: Colors.white
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
