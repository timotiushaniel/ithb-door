import 'package:flutter/material.dart';
import 'package:ithb_flutter/model/job_model.dart';
import 'package:ithb_flutter/job_detail.dart';

class HomePage extends StatefulWidget {
  final String userName;

  HomePage({this.userName});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textController = TextEditingController();
  String userName;
  String password;
  String salary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF0F0F0),
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 170,
        title: Image.asset(
          'images/ithb-main.png',
          width: 200,
          height: 200,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello,',
                      style: TextStyle(
                          color: Color(0xffAAAAAA),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 2.0),
                  Text('Welcome to ITHB Door',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w800))
                ],
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Recommended Jobs',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 6.0),
                ],
              ),
            ),
            Container(
              child: Column(
                children: job.map((index) {
                  return FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return JobDetail(index: index);
                      }));
                    },
                    child: Card(
                      color: Colors.grey[50],
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Image.asset(index.imageAsset,
                                height: 100, width: 90),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    index.company,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    index.name,
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_pin),
                                      Text(index.location),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 24,
                              ),
                              IconButton(
                                  icon: index.save == true
                                      ? Icon(Icons.bookmark,
                                          color: Colors.blue[600])
                                      : Icon(Icons.bookmark_border,
                                          color: Colors.grey),
                                  onPressed: () {
                                    setState(() {
                                      index.save = !index.save;
                                    });
                                  })
                            ],
                          )),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'News',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  SizedBox(height: 6.0),
                ],
              ),
            ),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/ithb-news.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/ithb-news(3).jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/ithb-news(2).jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var job = [
  JobModel(
    name: "Software Engineer",
    location: "Jakarta, Indonesia",
    company: "Google",
    imageAsset: "images/google.png",
    salary: "Rp 8.000.000",
    jobDescription:
        "We are looking for a strong candidate at C++ and Java. Candidate must pay good attention to software design.",
    save: false,
  ),
  JobModel(
    name: "Flutter Developer",
    location: "Jakarta, Indonesia",
    company: "Tokopedia",
    imageAsset: "images/tokopedia.png",
    salary: "Rp 10.000.000",
    jobDescription:
        "We are looking for a strong candidate at Flutter and SQL / NoSQL Database. Candidate must be familiar with Android dan iOS development. pay good attention to software design. Big plus if candidate has a strong knowledge in website development",
    save: false,
  ),
  JobModel(
    name: "Mobile Developer",
    location: "Jakarta, Indonesia",
    company: "Traveloka",
    imageAsset: "images/traveloka.png",
    salary: "Rp 9.000.000",
    jobDescription:
        "We are looking for a strong candidate at Kotlin or Java and SQL / NoSQL Database. Candidate must pay good attention to android environment. Big plus if candidate has a strong knowledge in MVVM Framework",
    save: false,
  ),
];
