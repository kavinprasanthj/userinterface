import 'package:flutter/material.dart';

class userinterface extends StatefulWidget {
  const userinterface({Key? key}) : super(key: key);

  @override
  State<userinterface> createState() => _userinterfaceState();
}

class _userinterfaceState extends State<userinterface> {
  DateTime _selectedDate = DateTime.now();
  int _selectedIndex = 0;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  String dropdownValue = 'All Departments'; // Default value for the dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "Electricity",
              style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
            ),
            Spacer(),
            IconButton(
              onPressed: () => _selectDate(context),
              icon: Icon(Icons.calendar_today, color: Colors.black),
            ),
            Text(
              "From ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              " To ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "06/02/2024",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                          )
                        ]
                    ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("19",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Expanded(
                        child: Container(

                          width: 95,
                          color: Colors.red,
                          child: Center(child: Text("Registered",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("0",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Expanded(
                        child: Container(

                          width: 95,
                          color: Colors.purpleAccent,
                          child: Center(child: Text("Assigned",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("0",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Expanded(
                        child: Container(

                          width: 95,
                          color: Colors.blue,
                          child: Center(child: Text("Checked",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("0",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Expanded(
                        child: Container(

                          width: 95,
                          color: Colors.blueAccent,
                          child: Center(child: Text("Re Assigned",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("0",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Expanded(
                        child: Container(

                          width: 95,
                          color: Colors.red,
                          child: Center(child: Text("Solved",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("1",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Expanded(
                        child: Container(

                          width: 95,
                          color: Colors.lightGreenAccent,
                          child: Center(child: Text("Verified",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Spacer between the additional Row and the text
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "Complaints",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Icon(Icons.download,color: Colors.red,),
                      ),
                    ],
                  ),
                ),
                DropdownButton<String>( // Dropdown button
                  value: dropdownValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['All Departments', 'Department 2', 'Department 3', 'Department 4'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  icon: Icon(Icons.arrow_drop_down), // Dropdown icon
                ),

              ],
            ),
            Column(
              children: [
                Container( // Container after the dropdown
                  color: Colors.white,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.cable_sharp,color: Colors.purpleAccent,),
                        Expanded(
                          child: Text(
                            'others/ Fan is not working / Electricity '
                                'Hostel Sheetha C Block - Second Floor 8003 Registred',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Icon(Icons.warning_amber_rounded,color: Colors.orange,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container( // Container after the dropdown
                  color: Colors.white,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.plumbing,color: Colors.purpleAccent,),
                        Expanded(
                          child: Text(
                            'others/ Fan is not working / Electricity '
                                'Hostel Sheetha C Block - Second Floor 8003 Registred',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Icon(Icons.warning_amber_outlined,color: Colors.orange,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    onPressed: () {},
                    icon: Icon(Icons.home,color: Colors.red,),
                  ),
                  Text("Home",style: TextStyle(color: Colors.red),),
                ],
              ),

              SizedBox(width: 60.0),
              Column(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    onPressed: () {},
                    icon: Icon(Icons.menu,color: Colors.grey,),
                  ),
                  Text("Menu",style: TextStyle(color: Colors.grey),),
                ],
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.qr_code,color: Colors.white,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
