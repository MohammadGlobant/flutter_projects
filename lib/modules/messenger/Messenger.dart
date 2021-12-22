import 'package:flutter/material.dart';
import 'package:flutter_projects/modules/new_style/NewStyle.dart';
import '../../model/StoryItem.dart';
import '../../model/MessageItem.dart';
import '../../model/project_links.dart';
import 'package:flutter_projects/model/MessagesBody.dart';

class Messenger extends StatelessWidget {

  List<MessageItem> messages = [
    MessageItem(name: "Globant", url: links.globantImage, online: true, message: MessagesBody.msgGlobant),
    MessageItem(name: "Ibrahimovic", url: links.ibraImage, online: false, message: MessagesBody.msgIbra),
    MessageItem(name: "Messi", url: links.messiImage, online: false, message: MessagesBody.msgMessi),
    MessageItem(name: "Luís Nani", url: links.naniImage, online: true, message: MessagesBody.msgNani),
    MessageItem(name: "Mohammad Omar",url:links.mohammadImage,online: true,message: MessagesBody.msgMohamamd),
    MessageItem(name: "Mohammad Salah", url: links.salahImage, online: true, message: MessagesBody.msgSalah),
    MessageItem(name: "Ronaldo", url: links.ronaldoImage, online: false, message: MessagesBody.msgRonaldo),
    MessageItem(name: "Luís Nani", url: links.naniImage, online: true, message: MessagesBody.msgNani),
    MessageItem(name: "Shakira Isabel", url: links.shakiraImage, online: true, message: MessagesBody.msgShakira),
    MessageItem(name: "Leonardo DiCaprio",url:links.dicaprioImage,online: true,message: MessagesBody.msgDicaprio),
    MessageItem(name: "Messi", url: links.messiImage, online: false, message: MessagesBody.msgMessi),
    MessageItem(name: "Mohammad Omar",url:links.mohammadImage,online: true,message: MessagesBody.msgMohamamd),
    MessageItem(name: "Mohammad Salah", url: links.salahImage, online: true, message: MessagesBody.msgSalah),
    MessageItem(name: "Ronaldo", url: links.ronaldoImage, online: false, message: MessagesBody.msgRonaldo),
    MessageItem(name: "Leonardo DiCaprio",url:links.dicaprioImage,online: true,message: MessagesBody.msgDicaprio),
    MessageItem(name: "Ibrahimovic", url: links.ibraImage, online: true, message: MessagesBody.msgIbra),
    MessageItem(name: "Shakira Isabel", url: links.shakiraImage, online: true, message: MessagesBody.msgShakira),
    MessageItem(name: "Messi", url: links.messiImage, online: true, message: MessagesBody.msgMessi),
    MessageItem(name: "Mohammad Omar",url:links.mohammadImage,online: true,message: MessagesBody.msgMohamamd),
    MessageItem(name: "Globant", url: links.globantImage, online: true, message: MessagesBody.msgGlobant),
    MessageItem(name: "Leonardo DiCaprio",url:links.dicaprioImage,online: true,message: MessagesBody.msgDicaprio),
    MessageItem(name: "Mohammad Salah", url: links.salahImage, online: true, message: MessagesBody.msgSalah),
    MessageItem(name: "BMW", url: links.bmwImage, online: false, message: MessagesBody.msgBMW),
  ];

  List<StoryItem> items = [
    StoryItem(name: "Mohammad Omar", url: links.mohammadImage, online: true),
    StoryItem(name: "Globant", url: links.globantImage, online: false),
    StoryItem(name: "Mohammad Salah", url: links.salahImage, online: false),
    StoryItem(name: "Ibrahimovic", url: links.ibraImage, online: false),
    StoryItem(name: "Ronaldo", url: links.ronaldoImage, online: true),
    StoryItem(name: "BMW", url: links.bmwImage, online: false),
    StoryItem(name: "Shakira Isabel", url: links.shakiraImage, online: true),
    StoryItem(name: "Messi", url: links.messiImage, online: false),
    StoryItem(name: "Mohammad Omar", url: links.mohammadImage, online: false),
    StoryItem(name: "Leonardo DiCaprio", url: links.dicaprioImage, online: true),
    StoryItem(name: "Luís Nani", url: links.naniImage, online: true),
  ];

  Messenger({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: const [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/32689856?s=400&u=bd58ece9ce4e672c79751ada56fe5004d2f949aa&v=4"),
            ),
            SizedBox(width: 15.0),
            Text('Chats'),
          ],
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const NewStyle()));
          },
              icon: const CircleAvatar(
                child: Icon(Icons.edit),
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepOrange,
              )),
          IconButton(onPressed: (){},
              icon: const CircleAvatar(
                child: Icon(Icons.camera_alt),
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepOrange,
              )),
        ],
      ),
      body: Container(
        color: Colors.deepOrange,
        child: Container(
          padding: const EdgeInsets.all( 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      Icon(Icons.search),
                      SizedBox(width: 15.0,),
                      Text("Search here"),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0,),
                Container(
                  height: 100.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index) => BuildStoryItem(items[index]),
                    itemCount: items.length,
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 20.0),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true, // display all items
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) => BuildChatItem(messages[index]),
                    itemCount: messages.length,
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20.0,),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget BuildStoryItem(StoryItem item) => Row(
    children: [
      Container(
        width: 70.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(item.url),
                ),
                const CircleAvatar(
                  radius: 12.0,
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0,right: 2.0),
                  child: onlineState(item.online),
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            Text(
              item.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    ],
  );

  Widget BuildChatItem(MessageItem message) => Column(
    children: [
      Container(
        margin: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    message.url
                  ),
                ),
                const CircleAvatar(
                  radius: 12.0,
                  backgroundColor: Colors.white,
                ),
                 Padding(
                  padding: const EdgeInsets.only(bottom: 2.0,right: 2.0),
                  child: onlineState(message.online),

                ),
              ],
            ),
            const SizedBox(width: 10.0,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(message.name,
                    maxLines: 1,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),),
                  const SizedBox(height: 5.0),
                  Text(message.message,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );

  Widget onlineState(bool online){
    Widget color ;
    if(online){
      color = const CircleAvatar(
        radius: 10.0,
        backgroundColor: Colors.green,
      );
    }
    else{
      color = const CircleAvatar(
        radius: 10.0,
        backgroundColor: Colors.red,
      );
    }
    return color;
  }

}

