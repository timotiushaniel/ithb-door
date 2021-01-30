import 'package:flutter/material.dart';
import 'package:ithb_flutter/home_page.dart';
import 'package:ithb_flutter/model/job_model.dart';

class JobDetail extends StatelessWidget {
  final JobModel index;

  JobDetail({@required this.index});

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF0F0F0),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
          },
        ),
        centerTitle: true,
        toolbarHeight: 55,
        title: Text(
          index.company,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                padding: EdgeInsets.only(top: 6.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.grey[50],
                  child: Column(
                    children: [
                    Row(
                      mainAxisAlignment : MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          index.imageAsset,
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          index.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22.0,
                          ),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          index.company,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          index.location,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          index.salary,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 3.0,)
                      ],
                    ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.only(top: 16.0),
                child: Column(
                  children: [
                    Row(
                      children:[
                        Text(
                          "Job Description",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                      ]
                    ),
                    SizedBox(height: 8.0,),
                    Column(
                      children:[
                        Text(
                          index.jobDescription,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      ]
                    ),
                    SizedBox(height: 21.0,),
                    Row(
                      children:[
                        Text(
                          "Qualifications",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                      ]
                    ),
                    SizedBox(height: 8.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          "•\tMin level of education in Computer Engineering, Computer Science, or any related fields",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        SizedBox(height: 1.0,),
                        Text(
                          "•\tExpert in related fields network",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        SizedBox(height: 1.0,),
                        Text(
                          "•\tFluent in English",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      ]
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.0,),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.people_outline,
                          color: Colors.blue,
                          size: 28.0,
                        ),
                        SizedBox(width: 14.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Vacancy',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500
                              )
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              '13',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400
                              )
                            )
                          ],
                        ),
                      ]
                    ),
                    SizedBox(height: 8.0,),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.blue,
                              size: 28.0,
                            ),
                            SizedBox(width: 16.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Application Deadline',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500
                                  )
                                ),
                                SizedBox(height: 4.0),
                                Text(
                                  '4 June 2021',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400
                                  )
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ),
            ]
          ),
        ),
      ),
    );
  }
}