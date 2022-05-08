import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

//Stateful widget 생성
class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  //dynamic data 작성
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    //widget tree를 return
    //scaffold widget
    return Scaffold(
      //전체 배경색 변경
      backgroundColor: Colors.yellow[100],
      // 1. appBar property : 상단에 떠있는 bar
      appBar: AppBar(
        //title 설정
        title:Text('Ninja ID Card'),
        //title을 center에 위치
        centerTitle: true,
        //배경색 변경
        backgroundColor: Colors.amber[200],
        //글자색 변경
        foregroundColor: Colors.grey[850],
        //그림자 없애기
        elevation: 0.0,
      ),
      // 2.floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //setState() : build function rerun 하는 역할 --> 업데이트된 data로 rebuild!
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),

      // 3. body property : screen의 body에 들어갈 contents
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          //왼쪽 정렬
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //circle avatar image
            Center( //요소를 가운데에 위치하기
              child: CircleAvatar(
                backgroundImage: AssetImage('images/다람쥐.jpg'),
                radius:50, //원 크기
              ),
            ),
            //divider (구분선)
            Divider(
              height:90,
              //thickness 설정해주지 않으면 안 보임!
              thickness: 3,
              color:Colors.amber[100],
            ),
            Text(
              'NAME',
              //text style 설정
              style: TextStyle(
                color: Colors.amber[700],
                //글자간 간격
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              )
            ),
            //간단하게 두 요소 사이 space를 주는 방법: sizedBox
            SizedBox(
              height:10,
            ),
            Text(
                'Squirrel',
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight:FontWeight.bold,
                )
            ),
            SizedBox(
              height:30,
            ),
            Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: Colors.amber[700],
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(
              height:10,
            ),
            Text(
                '$ninjaLevel', //변수는 앞에 $를 붙임
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight:FontWeight.bold,
                )
            ),
            SizedBox(
              height:30,
            ),
            Row (
              children: [
                Icon(
                  Icons.email,
                  color: Colors.amber[700],
                ),
                SizedBox(
                  width:10,
                ),
                Text(
                  'aaa@gmail.com',
                  style:TextStyle(
                    color:Colors.amber[700],
                    letterSpacing: 1,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ],
            )
          ],
        )
      ),

    );
  }
}


