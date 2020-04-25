import 'package:flutter/material.dart';

class MedicalDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey[100],
        title: Text('Medical history',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          Icon(
            Icons.calendar_today,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        color: Colors.blueGrey[100],
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                dateRow('Mon','20'),
                dateRow('Tue','21'),
                dateRow('Wed','22'),
                dateRow('Thu','23',isActive: true),
                dateRow('Fri','24'),
                dateRow('Sat','25'),
                dateRow('Sun','26'),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 6,
                      ),
                      Text('Active'),
                      listRow(),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Archive'),
                      listRow(),
                      listRow(),
                      listRow(),
                      listRow(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.home,color: Colors.grey,),
                Icon(Icons.description,color: Colors.blue[500],),
                FloatingActionButton(
                  onPressed: (){},
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.add),
                ),
                Icon(Icons.notifications,color: Colors.grey,),
                Icon(Icons.person,color: Colors.grey,)
              ],
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
  
  dateRow(String name,String date,{isActive=false}){
    return  Padding(
      padding: const EdgeInsets.only(left:16),
      child: Container(
        color: isActive ? Colors.white : Colors.blueGrey[100],
        child: Column(
          children: <Widget>[
            Text(name),
            Text(date),
            CircleAvatar(
              radius: 2,
              backgroundColor: isActive==true?Colors.red:Colors.blueGrey[100],
            )
          ],
        ),
      ),
    );
  }
  listRow(){
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100]
      ),
      child: ListTile(
        leading: Icon(Icons.mail),
        title: Text('Tonsillities'),
        subtitle: Text('Apr 22 , 2020'),
        trailing: Icon(Icons.navigate_next),
      ),
    );
  }
  
}
