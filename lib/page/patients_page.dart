import 'package:flutter/material.dart';
import 'package:hospital_doctor/constant.dart';

class Patients extends StatefulWidget {
  @override
  _PatientsState createState() => _PatientsState();
}

class _PatientsState extends State<Patients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
          Row(
          children: [
          InkWell(
          child: Card(
          child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(Icons.arrow_back_ios,
            color: Constant.greenColor,
          ),
    ),
    ),
    onTap: (){
    Navigator.pop(context);
    },
    ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 70),
    child: Text(
    'Patients',
    style: TextStyle(
    fontWeight: FontWeight.w700,
    color:Color(0xff2e60a5),
    fontSize: 30,
    ),
    ),
    ),
    ],
    ),
               Card(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                       Container(height: 90,width: 100,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage(
                               'assets/images/ladyPatients.png'
                             ),
                             fit: BoxFit.cover
                           ),

                           borderRadius: BorderRadius.circular(8.0)
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Marina Kuwar',
                               style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                                 color:Color(0xff2e60a5),
                               ),

                             ),
                             SizedBox(height: 10,),
                             Text('Female',
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                 color:Colors.black38
                               ),
                             ),
                             SizedBox(height: 10,),
                             Text('Pregnacy',
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                   color:Colors.black38
                               ),
                             ),

                           ],
                         ),
                       ),
                         Expanded(child: Container()),
                         Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 10),
                               child: Text(
                                 '3days',
                                 style: TextStyle(
                                     fontSize: 15,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.black38
                                 ),
                               ),
                             ),
                             SizedBox(height: 20,),
                             ElevatedButton(onPressed: (){},
                               child: Text(
                                   'Discharge'
                               ),
                               style: ElevatedButton.styleFrom(primary: Colors.red),
                             )
                           ],
                         )
                     ],
                   ),
                 ),
               ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(height: 90,width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/manPatients.jpg'
                                  ),
                                  fit: BoxFit.fill
                              ),

                              borderRadius: BorderRadius.circular(8.0)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Autor Taylor',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xff2e60a5),
                                ),

                              ),
                              SizedBox(height: 10,),
                              Text('Male',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.black38
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Corona',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.black38
                                ),
                              ),

                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                '1days',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            ElevatedButton(onPressed: (){},
                              child: Text(
                                  'Discharge'
                              ),
                              style: ElevatedButton.styleFrom(primary: Constant.greenColor,),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                       Container(height: 90,width: 100,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage(
                               'assets/images/ladyPatients.png'
                             ),
                             fit: BoxFit.cover
                           ),

                           borderRadius: BorderRadius.circular(8.0)
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Marina Kuwar',
                               style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                                 color:Color(0xff2e60a5),
                               ),

                             ),
                             SizedBox(height: 10,),
                             Text('Female',
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                 color:Colors.black38
                               ),
                             ),
                             SizedBox(height: 10,),
                             Text('Pregnacy',
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                   color:Colors.black38
                               ),
                             ),

                           ],
                         ),
                       ),
                       Expanded(child: Container()),
                         Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 10),
                               child: Text(
                                 '3days',
                                 style: TextStyle(
                                     fontSize: 15,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.black38
                                 ),
                               ),
                             ),
                             SizedBox(height: 20,),
                             ElevatedButton(onPressed: (){},
                               child: Text(
                                   'Discharge'
                               ),
                               style: ElevatedButton.styleFrom(primary: Colors.red),
                             )
                           ],
                         )
                     ],
                   ),
                 ),
               ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(height: 90,width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/manPatients.jpg'
                                  ),
                                  fit: BoxFit.fill
                              ),

                              borderRadius: BorderRadius.circular(8.0)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Autor Taylor',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color:Color(0xff2e60a5),
                                ),

                              ),
                              SizedBox(height: 10,),
                              Text('Male',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.black38
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Corona',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.black38
                                ),
                              ),

                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                '1days',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            ElevatedButton(onPressed: (){},
                              child: Text(
                                  'Discharge'
                              ),
                              style: ElevatedButton.styleFrom(primary: Constant.greenColor,),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                       Container(height: 90,width: 100,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage(
                               'assets/images/ladyPatients.png'
                             ),
                             fit: BoxFit.cover
                           ),

                           borderRadius: BorderRadius.circular(8.0)
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Marina Kuwar',
                               style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                                 color:Color(0xff2e60a5),
                               ),

                             ),
                             SizedBox(height: 10,),
                             Text('Female',
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                 color:Colors.black38
                               ),
                             ),
                             SizedBox(height: 10,),
                             Text('Pregnacy',
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                   color:Colors.black38
                               ),
                             ),

                           ],
                         ),
                       ),
                       Expanded(child: Container()),
                         Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 10),
                               child: Text(
                                 '3days',
                                 style: TextStyle(
                                     fontSize: 15,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.black38
                                 ),
                               ),
                             ),
                             SizedBox(height: 20,),
                             ElevatedButton(onPressed: (){},
                               child: Text(
                                   'Discharge'
                               ),
                               style: ElevatedButton.styleFrom(primary: Colors.red),
                             )
                           ],
                         )
                     ],
                   ),
                 ),
               ),
                Card(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                       Container(height: 90,width: 100,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage(
                               'assets/images/manPatients.jpg'
                             ),
                             fit: BoxFit.fill
                           ),

                           borderRadius: BorderRadius.circular(8.0)
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Autor Taylor',
                               style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                                 color:Color(0xff2e60a5),
                               ),

                             ),
                             SizedBox(height: 10,),
                             Text('Male',
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                 color:Colors.black38
                               ),
                             ),
                             SizedBox(height: 10,),
                             Text('Corona',
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                   color:Colors.black38
                               ),
                             ),

                           ],
                         ),
                       ),
                       Expanded(child: Container()),
                         Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 10),
                               child: Text(
                                 '1days',
                                 style: TextStyle(
                                     fontSize: 15,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.black38
                                 ),
                               ),
                             ),
                             SizedBox(height: 20,),
                             ElevatedButton(onPressed: (){},
                               child: Text(
                                   'Discharge'
                               ),
                               style: ElevatedButton.styleFrom(primary: Constant.greenColor,),
                             )
                           ],
                         )
                     ],
                   ),
                 ),
               ),

    ],
    ),
        ),
      ),
    );
  }
}
