import 'package:flutter/material.dart';
import 'package:flutter_projects/modules/settings/Settings.dart';
import '../messenger/Messenger.dart';
import '../../model/HomeItems.dart';
import '../../model/project_links.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<HomeItems> items = [
    HomeItems(name: "Globant", url: links.globantImage),
    HomeItems(name: "Ibrahimovic", url: links.ibraImage),
    HomeItems(name: "Messi", url: links.messiImage),
    HomeItems(name: "Luís Nani", url: links.naniImage),
    HomeItems(name: "Mohammad Omar",url:links.mohammadImage),
    HomeItems(name: "Mohammad Salah", url: links.salahImage),
    HomeItems(name: "Ronaldo", url: links.ronaldoImage),
    HomeItems(name: "Luís Nani", url: links.naniImage),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        leading:IconButton(
          onPressed: () => goToMessengersFun(context),
          icon: const Icon(Icons.message),),
        title: const Text('My First App'),
        actions:[
          IconButton(
            onPressed: () => goToSettingsFun(context),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              color: Colors.deepOrange,
              child: Row(
                children: [
                  Expanded(
                      child:
                      IconButton(onPressed:(){}, icon: const Icon(Icons.file_copy_sharp,color: Colors.white,),)
                  ),
                  Expanded(
                      child:
                      IconButton(onPressed:(){}, icon: const Icon(Icons.person,color: Colors.white,),)
                  ),
                  Expanded(
                      child:
                      IconButton(onPressed:(){}, icon: const Icon(Icons.message,color: Colors.white,),)
                  ),
                  Expanded(
                      child:
                      IconButton(onPressed:(){}, icon: const Icon(Icons.notifications,color: Colors.white,),)
                  ),
                  Expanded(
                      child:
                      IconButton(onPressed:(){}, icon: const Icon(Icons.list,color: Colors.white,),)
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        color: Colors.black,
                        child: Image.network(
                          'https://images2.minutemediacdn.com/image/upload/c_fill,w_2160,ar_16:9,f_auto,q_auto,g_auto/shape/cover/sport/AC-Milan-v-AS-Roma---Serie-A-a2c6966780088955a76382abc4cda565.jpg',
                          fit: BoxFit.cover,
                          height: 50.0,
                          width: 50.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      height: 70.0,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.shade300
                      ),
                      alignment:Alignment.center,
                      child:const Text("What's on your mind?",style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),),
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    child: const Icon(
                      Icons.upload
                    ),
                  ),
                ],
              ),
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true, // display all items
                scrollDirection: Axis.vertical,
                separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10.0,),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index)=> homeItems(items[index])
            ),
          ],
        ),
      ),
    );
  }
}
void goToSettingsFun(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Settings()),
  );
}
void goToMessengersFun(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Messenger()),
  );
}
Widget homeItems(HomeItems item) => Container(
    width: double.infinity,
    margin: const EdgeInsets.only(top: 10.0, left: 5.0,right: 5.0),
    child: Column(
      children: [
        Container(
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10.0),),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
               Image(
                image: NetworkImage(item.url),
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              Container(
                color: Colors.deepOrange.withOpacity(0.7),
                width: double.infinity,
                child: Text(item.name,
                    textAlign: TextAlign.center,
                    style:
                    const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    )
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
