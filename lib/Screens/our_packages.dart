import 'package:flutter/material.dart';
import 'package:sample_ui/Screens/packages/agra.dart';
import 'package:sample_ui/Screens/packages/amrithsar.dart';
import 'package:sample_ui/Screens/packages/delhi.dart';
import 'package:sample_ui/Screens/packages/goa.dart';
import 'package:sample_ui/Screens/packages/hampi.dart';
import 'package:sample_ui/Screens/packages/jaipur.dart';
import 'package:sample_ui/Screens/packages/jaisalmar.dart';
import 'package:sample_ui/Screens/packages/kerala.dart';
import 'package:sample_ui/Screens/packages/mumbai.dart';
import 'package:sample_ui/Screens/packages/mysore.dart';
import 'package:sample_ui/Screens/packages/shimla.dart';
import 'package:sample_ui/Screens/packages/taj_mahal.dart';
import 'package:sample_ui/Screens/packages/udaipur.dart';
import 'package:sample_ui/Screens/packages/varanasi.dart';

class OurPackages extends StatefulWidget {
  const OurPackages({super.key});

  @override
  State<OurPackages> createState() => _OurPackagesState();
}

class _OurPackagesState extends State<OurPackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFC0CECE),
        appBar: AppBar(
          title: const Text("Our Packages"),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Card(
              elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
              child: OurPackages1(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TajMahal(),
                      ),
                    );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/slid img2.jpeg',
                  title: 'Taj Mahal'),
            ),
            SizedBox(height: 6,),
                 Card(
                   elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
                   child: OurPackages1(
                                 onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JaipurPage(),
                      ),
                    );
                                 },
                                 image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Jaipur.jpeg',
                                 title: 'Jaipur'),
                 ),
                 SizedBox(height: 6,),
             Card(
               elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
               child: OurPackages1(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VaranasiPage(),
                      ),
                    );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Varanasi.jpeg',
                  title: 'Varanasi'),
             ),
             SizedBox(height: 6,),
                OurPackages1(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KeralaP(),
                    ),
                  );
                },
                image:
                    'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Kerala.jpeg',
                title: 'Kerala'),
                SizedBox(height: 6,),
              Card(
                 elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
                child: OurPackages1(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GoaPage(),
                      ),
                    );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Goa.jpeg',
                  title: 'Goa'),
              ),
              SizedBox(height: 6,),
                 Card(
                   elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
                   child: OurPackages1(
                                 onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DelhiPage(),
                      ),
                    );
                                 },
                                 image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Delhi.jpeg',
                                 title: 'Delhi'),
                 ),
                 SizedBox(height: 6,),
            Card(
               elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
              child: OurPackages1(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MumbaiPage(),
                      ),
                    );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Mumbai.jpeg',
                  title: 'Mumbai'),
            ),
            SizedBox(height: 6,),
             Card(
               elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
               child: OurPackages1(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UdaipurPage(),
                      ),
                    );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Udaipur.jpeg',
                  title: 'Udaipur'),
             ),
             SizedBox(height: 6,),
           Card(
             elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
             child: OurPackages1(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AmrithsarPage(),
                      ),
                    );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Amithsar.jpeg',
                  title: 'Amithsar'),
           ),
           SizedBox(height: 6,),
             Card(
               elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
               child: OurPackages1(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HampiPage(),
                      ),
                    );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Hampi.jpeg',
                  title: 'Hampi'),
             ),
             SizedBox(height: 6,),
          Card(
             elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
            child: OurPackages1(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JaisalmarPage(),
                      ),
                    );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Jaisalmar.jpeg',
                  title: 'Jaisalmar'),
          ),
          SizedBox(height: 6,),
            Card(
               elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
              child: OurPackages1(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AgraPage(),
                      ),
                    );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Agra.jpeg',
                  title: 'Agra'),
            ),
            SizedBox(height: 6,),
           Card(
             elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
             child: OurPackages1(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MysorePage(),
                      ),
                    );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Mysore.jpeg',
                  title: 'Mysore'),
           ),
           SizedBox(height: 6,),
             Card(
               elevation: 13,
              color: Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
               child: OurPackages1(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShimlaPage(),
                      ),
                    );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Shimla.jpeg',
                  title: 'Shimla'),
             ),
          ],
        ));
  }
}

class OurPackages1 extends StatelessWidget {
  const OurPackages1({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
  });
  final String image;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        onTap: onTap,
        contentPadding: EdgeInsets.all(10),
        tileColor: Color.fromARGB(255, 186, 178, 178),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(image),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 23),
        ),
      ),
    );
  }
}
