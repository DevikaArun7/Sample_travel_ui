import 'dart:developer';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/packages/goa.dart';
import 'package:phoneauth_firebase/provider/auth_provider.dart';
import 'package:phoneauth_firebase/screens/welcome_screen.dart';
import 'package:phoneauth_firebase/utils/utils.dart';
import 'package:provider/provider.dart';

import '../model/package_model.dart';
import '../packages/taj_mahal.dart';
import 'drawer.dart';
import 'ourpackages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          actions: [
            IconButton(
              onPressed: () {
                showSnackBar(context, "Log Out");
                ap.userSignOut().then(
                      (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreen(),
                        ),
                      ),
                    );
              },
              icon: const Icon(Icons.exit_to_app),
            ),
            IconButton(onPressed: (){
            showSearch(context: context, delegate: CustomSearchDelegate(),);
          }, icon: const Icon(Icons.search))
          ],
        ),
        drawer: const NavBar(),
        body: FutureBuilder(
            future: fetchFirestoreData('packages'),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    final data = snapshot.data![index];
                    return OurPackages1(
                        image: data.packageLogo,
                        title: data.packageName,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TajMahal(
                                  images: data.images,
                                  packageName: data.packageName,
                                  packageDescription: data.description),
                            ),
                          );
                        }
                        );
                  },
                  itemCount: snapshot.data!.length,
                );
              } else {
                return Text('else');
              }
            }
            )
            

        // ListView(
        //     padding: const EdgeInsets.all(10),
        //     children: [
        //       Card(
        //         elevation: 13,
        //         color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //         child: OurPackages1(
        //             onTap: () {

        //             },
        //             image:
        //                 'assets/images/slid img2.jpeg',
        //             title: 'Taj Mahal',),

        //       ),
        //       const SizedBox(height: 6,),
        //            Card(
        //              elevation: 13,
        //         color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //              child: OurPackages1(
        //                            onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const JaipurPage(),
                      //   ),
                      // );
        //                            },
        //                            image:
        //                 'assets/images/Jaipur.jpeg',
        //                            title: 'Jaipur'),
        //            ),
        //            const SizedBox(height: 6,),
        //        Card(
        //          elevation: 13,
        //        color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //          child: OurPackages1(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => const VaranasiPage(),
        //                 ),
        //               );
        //             },
        //             image:
        //                 'C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Varanasi.jpeg',
        //             title: 'Varanasi'),
        //        ),
        //        const SizedBox(height: 6,),
        //         Card(
        //          elevation: 13,
        //        color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //          child: OurPackages1(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => const KeralaP(),
        //                 ),
        //               );
        //             },
        //             image:
        //                 'C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Kerala.jpeg',
        //             title: 'Kerala'),
        //        ),
        //           const SizedBox(height: 6,),
        //         Card(
        //            elevation: 13,
        //         color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //           child: OurPackages1(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => const GoaPage(),
        //                 ),
        //               );
        //             },
        //             image:
        //                 'C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Goa.jpeg',
        //             title: 'Goa'),
        //         ),
        //         const SizedBox(height: 6,),
        //            Card(
        //              elevation: 13,
        //         color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //              child: OurPackages1(
        //                            onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => const DelhiPage(),
        //                 ),
        //               );
        //                            },
        //                            image:
        //                 'C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Delhi.jpeg',
        //                            title: 'Delhi'),
        //            ),
        //            const SizedBox(height: 6,),
        //       Card(
        //          elevation: 13,
        //         color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //         child: OurPackages1(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => const MumbaiPage(),
        //                 ),
        //               );
        //             },
        //             image:
        //                 'C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Mumbai.jpeg',
        //             title: 'Mumbai'),
        //       ),
        //       const SizedBox(height: 6,),
        //        Card(
        //          elevation: 13,
        //         color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //          child: OurPackages1(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => const UdaipurPage(),
        //                 ),
        //               );
        //             },
        //             image:
        //                 'C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Udaipur.jpeg',
        //             title: 'Udaipur'),
        //        ),
        //        const SizedBox(height: 6,),
        //      Card(
        //        elevation: 13,
        //         color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //        child: OurPackages1(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => const AmrithsarPage(),
        //                 ),
        //               );
        //             },
        //             image:
        //                 'C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Amithsar.jpeg',
        //             title: 'Amithsar'),
        //      ),
        //      const SizedBox(height: 6,),
        //        Card(
        //          elevation: 13,
        //         color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //          child: OurPackages1(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => const HampiPage(),
        //                 ),
        //               );
        //             },
        //             image:
        //                 'C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Hampi.jpeg',
        //             title: 'Hampi'),
        //        ),
        //        const SizedBox(height: 6,),
        //     Card(
        //        elevation: 13,
        //         color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //       child: OurPackages1(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => const JaisalmarPage(),
        //                 ),
        //               );
        //             },
        //             image:
        //                 'C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Jaisalmar.jpeg',
        //             title: 'Jaisalmar'),
        //     ),
        //     const SizedBox(height: 6,),
        //       Card(
        //          elevation: 13,
        //         color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //         child: OurPackages1(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => const AgraPage(),
        //                 ),
        //               );
        //             },
        //             image:
        //                 'C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Agra.jpeg',
        //             title: 'Agra'),
        //       ),
        //       const SizedBox(height: 6,),
        //      Card(
        //        elevation: 13,
        //         color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //        child: OurPackages1(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (ckerontext) => const MysorePage(),
        //                 ),
        //               );
        //             },
        //             image:
        //                 'C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Mysore.jpeg',
        //             title: 'Mysore'),
        //      ),
        //      const SizedBox(height: 6,),
        //        Card(
        //          elevation: 13,
        //        color: const Color.fromARGB(255, 201, 33, 243),
        //         shadowColor: Colors.black,
        //          child: OurPackages1(
                    // onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ShimlaPage(),
                      //   ),
                      // );
                    // },
        //             image:
        //                 'C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Shimla.jpeg',
        //             title: 'Shimla'),
        //        ),
        //     ],
        //   )
        );
  }

  Future<List<PackageModel>> fetchFirestoreData(String collectionName) async {
    try {
      final QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection(collectionName).get();

      final List<PackageModel> data = snapshot.docs
          .map((doc) =>
              PackageModel.fromJson(doc.data() as Map<String, dynamic>))
          .toList();

      return data;
    } catch (error) {
      log('Error fetching Firestore data: $error');
      throw error;
    }
  }
}

// class CustomSearchDelegate extends SearchDelegate {
  
//   List<String>searchTerms = [
  //  'Kerala',
  //  'Goa',
  //  'Hampi',
  //  'Jaisalmer',
  //  'Mysore',
  //  'Shimla',
  //  'Jaipur',
  //  'Varanasi',
  //  'Mumbai',
  //  'Delhi',
  //  'Agra',
  //  'Amrithsar',
  //  'Udaipur',
//   ];

//   @override
//   List<Widget>? buildActions(BuildContext context) {
//      return [
//       IconButton(icon: const Icon(Icons.clear), 
//       onPressed: () {
//         query = '' ;
//       },
//       )
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//      return IconButton(icon: Icon(Icons.arrow_back),
//     onPressed: (){
//       close(context, null);
//     },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for(var fruit in searchTerms){
//       if(fruit.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(fruit);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//       );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String>matchQuery = [];
//     for(var fruit in searchTerms){
//       if(fruit.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(fruit);
//       }
//     }
//      return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//       );
//   }

// }
class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
     'Kerala',
   'Goa',
   'Hampi',
   'Jaisalmer',
   'Mysore',
   'Shimla',
   'Jaipur',
   'Varanasi',
   'Mumbai',
   'Delhi',
   'Agra',
   'Amrithsar',
   'Udaipur',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Handle the navigation and display logic here
    if (searchTerms.contains(query)) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GoaPage(),
        ),
      );
    }

    return Center(
      child: Text('No results found for $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final matchQuery = searchTerms.where((term) => term.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        final result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            query = result;
            showResults(context);
          },
        );
//        },
//     );
//   }
      },
    );
  }

}