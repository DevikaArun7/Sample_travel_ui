import 'package:flutter/material.dart';

import '../model/hampi.dart';
import '../packages/agra.dart';
import '../packages/amrithsar.dart';
import '../packages/delhi.dart';
import '../packages/goa.dart';
import '../packages/jaipur.dart';
import '../packages/jaisalmar.dart';
import '../packages/kerala.dart';
import '../packages/mumbai.dart';
import '../packages/mysore.dart';
import '../packages/shimla.dart';
import '../packages/udaipur.dart';
import '../packages/varanasi.dart';

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
          padding: const EdgeInsets.all(10),
          children: [
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
              child: OurPackages1(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const TajMahal(),
                    //   ),
                    // );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/slid img2.jpeg',
                  title: 'Taj Mahal'),
            ),
            const SizedBox(
              height: 6,
            ),
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
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
            const SizedBox(
              height: 6,
            ),
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
              shadowColor: Colors.black,
              child: OurPackages1(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VaranasiPage(),
                      ),
                    );
                  },
                  image:
                      'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Varanasi.jpeg',
                  title: 'Varanasi'),
            ),
            const SizedBox(
              height: 6,
            ),
            OurPackages1(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KeralaP(),
                    ),
                  );
                },
                image:
                    'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Kerala.jpeg',
                title: 'Kerala'),
            const SizedBox(
              height: 6,
            ),
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
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
            const SizedBox(
              height: 6,
            ),
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
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
            const SizedBox(
              height: 6,
            ),
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
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
            const SizedBox(
              height: 6,
            ),
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
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
            const SizedBox(
              height: 6,
            ),
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
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
            const SizedBox(
              height: 6,
            ),
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
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
            const SizedBox(
              height: 6,
            ),
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
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
            const SizedBox(
              height: 6,
            ),
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
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
            const SizedBox(
              height: 6,
            ),
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
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
            const SizedBox(
              height: 6,
            ),
            Card(
              elevation: 13,
              color: const Color.fromARGB(255, 208, 201, 201),
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
        contentPadding: const EdgeInsets.all(10),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(image),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 23),
        ),
      ),
    );
  }
}
