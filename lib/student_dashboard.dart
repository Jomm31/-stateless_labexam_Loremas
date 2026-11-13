import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              print('logout');
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images.jpg')
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Joemire Dave Loremas',
                      style: TextStyle(fontSize: 20,  fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'ID: 550813',
                      style: TextStyle(color: Colors.black,fontSize: 14),
                    ),
                    Text(
                      'BSCS 4TH YEAR',
                      style: TextStyle(color: Colors.black, fontSize: 14)
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13)
              ),

              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('j.loremas.550813@umindanao.edu.ph')
                    ),

                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('+63 912 345 6789')
                    ),

                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('123 Bago, Davao City, Philippines')
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),


            const Text(
              'Subjects',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
            ),
            const SizedBox(height: 12),


            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              margin: const EdgeInsets.only(bottom: 8),
              child: const SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile App Development',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 4),
                      Text('Instructor: Sir. Michael Aguido Velez'),
                      Text('Schedule: Mon-Fri 10:00 AM - 12:00 PM'),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              margin: const EdgeInsets.only(bottom: 8),
              child: const SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cyber Security',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 4),
                      Text('Instructor: Ms. Altheae Owe'),
                      Text('Schedule: Mon-Fri 3:30 - 5:30 PM'),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              margin: const EdgeInsets.only(bottom: 8),
              child: const SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Networking',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 4),
                      Text('Instructor: Sir. Cyril Loyd Tomas'),
                      Text('Schedule: Mon-Fri 5:30 - 7:30 PM'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('add subject');
        },


        child: const Icon(Icons.add)
      )
    );
  }
}
