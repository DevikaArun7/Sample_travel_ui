import 'dart:developer';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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
// class CustomSearchDelegate extends SearchDelegate {
//   List<String> searchTerms = [
//      'Kerala',
//    'Goa',
//    'Hampi',
//    'Jaisalmer',
//    'Mysore',
//    'Shimla',
//    'Jaipur',
//    'Varanasi',
//    'Mumbai',
//    'Delhi',
//    'Agra',
//    'Amrithsar',
//    'Udaipur',
//   ];

//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, null);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     List<dynamic>matchquery=[];
//     for(var place in searchTerms){
//       if(place.toLowerCase().contains(query.toLowerCase())){
//         matchquery.add(place);
       
//       }
//     }
//      return ListView.builder(
//       itemCount: matchquery.length,
//       itemBuilder: (context, index) {
//         final result = matchquery[index];
//         return ListTile(
//           title: Text(result),
//           onTap: () {
            
//             // query = result;
//             // showResults(context);
//             Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => TajMahal(packageName: result, packageDescription: result, images: result),
//         ),
//       );
//           },
//         );
// //        },
// //     );
// //   }
//       },
//     );
//     // Handle the navigation and display logic here
//     // if (searchTerms.contains(query)) {
     
      
//     // }

//     return Center(
//       child: Text('No results found for $query'),
//     );
//   }
  

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<dynamic>matchQuery=[];
//     for(var place in searchTerms){
//       if (place.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(place);
//       } {
         
//        }
//     }

     

//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         final result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//           onTap: () {
//             query = result;
//             showResults(context);
//             Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => TajMahal(packageName: result, packageDescription: result, images: result),
//         ),
//       );
//           },
//         );
// //        },
// //     );
// //   }
//       },
//     );
//   }

// }

class CustomSearchDelegate extends SearchDelegate {
  Description des =Description();
  List<String> searchTerms = [
    'Kerala', 'Goa', 'Hampi', 'Jaisalmer', 'Mysore', 'Shimla', 'Jaipur',
    'Varanasi', 'Mumbai', 'Delhi', 'Agra', 'Amritsar', 'Udaipur',
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
    List<String> matchQuery = searchTerms.where(
      (place) => place.toLowerCase().contains(query.toLowerCase())
    ).toList();

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        final result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            // Navigate to TajMahal page with the selected result
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TajMahal(
                  packageName: result,
                  packageDescription: des.goa.toString(),
                  images: des.goaimage,
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = searchTerms.where(
      (place) => place.toLowerCase().contains(query.toLowerCase())
    ).toList();

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        final result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            // Set the query and show results on suggestion tap
            query = result;
            showResults(context);
          },
        );
      },
    );
  }
}

class Description {
 var tajmahal=["The Taj Mahal is an iconic mounument in Agra,India.Build by Emperor Shah Jahan in memory of his wife,it is a Unesco world Heritage Site."].join();
 var kerala=["Kerala, located on the southwestern coast of India, is a picturesque state known as Gods Own Country.It is renowned for its serene backwaters, palm-fringed beaches, and lush green landscapes. The tranquil backwaters of Alleppey and Kumarakom offer houseboat cruises, providing a unique and relaxing experience. Kerala's rich cultural heritage is evident in its classical dance forms like Kathakali and traditional martial art, Kalaripayattu. The state is also famous for its Ayurvedic wellness retreats, where visitors can rejuvenate their mind, body, and soul. Kerala is a tropical paradise that offers a blend of natural beauty, cultural experiences, and a warm and welcoming atmosphere."].join();
 var goa=["Goa, located on the western coast of India, is a popular beach destination known for its vibrant atmosphere and Portuguese influence. It boasts stunning sandy beaches like Calangute, Baga, and Anjuna, perfect for sunbathing and water sports. Goa's vibrant nightlife is legendary, with numerous clubs, bars, and beach parties. The state's colonial past is evident in its architecture, such as the Basilica of Bom Jesus and the Fort Aguada. Goa also offers a delectable culinary scene, with a fusion of Indian and Portuguese flavors. It is a paradise for beach lovers, party enthusiasts, history buffs, and foodies alike."].join();
 var hampi=["zzzz"].join();
 var jaisalmer=["Jaisalmer, located in the desert state of Rajasthan, India, is a captivating city renowned for its golden sandstone architecture and desert landscapes. The Jaisalmer Fort, also known as the Golden Fort, is a UNESCO World Heritage Site and a prominent attraction. The city's intricate havelis (mansions), such as Patwon Ki Haveli and Salim Singh Ki Haveli, showcase exquisite craftsmanship. Jaisalmer is the gateway to the Thar Desert, offering opportunities for camel safaris, desert camping, and witnessing stunning sunsets over the sand dunes. The city's vibrant culture, folk music and dance, and colorful markets make it a must-visit destination for experiencing the charm of Rajasthan."].join();
 var mysore=["Mysore, located in the southern state of Karnataka, India, is a city steeped in rich history and cultural heritage. It is renowned for its magnificent Mysore Palace, a grand royal residence adorned with intricate architecture and vibrant colors. The city's famous Dasara festival showcases a grand procession and cultural performances. Mysore is also known for its well-preserved colonial architecture, bustling markets, and traditional silk weaving industry. The Chamundi Hills, with the Chamundeshwari Temple atop, offer panoramic views of the city. Mysore's regal charm, cultural festivities, and architectural splendor make it a captivating destination for travelers."].join();
 var shimla=["Shimla, the capital city of Himachal Pradesh in India, is a picturesque hill station nestled in the Himalayas. Known for its colonial architecture, it served as the summer capital during the British Raj. The Mall Road, a vibrant shopping street, offers stunning views of the surrounding mountains. The Shimla Ridge, with its beautiful open spaces and Christ Church, is a popular attraction. Visitors can also explore the historic Viceregal Lodge and take a toy train ride on the Shimla-Kalka Railway, a UNESCO World Heritage Site. Shimla's pleasant climate, scenic beauty, and colonial charm make it a beloved destination for nature lovers and adventure enthusiasts."].join();
 var jaipur=["Jaipur, known as the Pink City, is a vibrant city in Rajasthan, India. Founded in 1727, it is famous for its well-preserved architectural wonders. The Hawa Mahal is a stunning palace with a unique honeycomb facade, while the City Palace showcases a blend of Rajput and Mughal styles. The Amber Fort, situated on a hilltop, offers breathtaking views. Jaipur's bustling bazaars are a shopper's paradise. The city hosts colorful festivals like the Jaipur Literature Festival and Teej Festival, showcasing its rich culture. With its royal history, captivating architecture, and cultural experiences, Jaipur is a must-visit destination."].join();
 var varansi=["Varanasi, also known as Kashi or Benaras, is a sacred city located on the banks of the River Ganges in Uttar Pradesh, India. It is one of the oldest inhabited cities, renowned for its ghats and spiritual significance. The Dashashwamedh Ghat hosts the famous Ganga Aarti ceremony, a captivating ritual held every evening. The Kashi Vishwanath Temple, dedicated to Lord Shiva, is a revered pilgrimage site. Varanasi's narrow lanes, ancient temples, and bustling markets offer a glimpse into rich cultural heritage. The city is a hub of classical music, dance performances, and traditional silk weaving. Exploring Varanasi is a spiritual and immersive experience, where life and rituals unfold along the sacred Ganges River."].join();
 var mumbai=["Mumbai, the financial capital of India, is a dynamic and cosmopolitan city on the western coast. It is known for its bustling energy, iconic landmarks, and Bollywood film industry. The Gateway of India, Marine Drive, and Juhu Beach are popular attractions offering stunning views of the Arabian Sea. The city's vibrant street markets, such as Colaba Causeway and Crawford Market, are a shopaholic's delight. Mumbai's diverse culinary scene offers a wide range of street food, regional delicacies, and international cuisine. With its fast-paced lifestyle and a blend of cultures, Mumbai is a city that never sleeps and leaves visitors enthralled.Mumbai, the financial capital of India, is a dynamic and cosmopolitan city on the western coast. It is known for its bustling energy, iconic landmarks, and Bollywood film industry. The Gateway of India, Marine Drive, and Juhu Beach are popular attractions offering stunning views of the Arabian Sea. The city's vibrant street markets, such as Colaba Causeway and Crawford Market, are a shopaholic's delight. Mumbai's diverse culinary scene offers a wide range of street food, regional delicacies, and international cuisine. With its fast-paced lifestyle and a blend of cultures, Mumbai is a city that never sleeps and leaves visitors enthralled."].join();
 var delhi=["Delhi, the capital city of India, is a bustling metropolis that seamlessly blends the old and the new. It is known for its rich history, architectural marvels, and vibrant culture. Must-visit attractions include the magnificent Red Fort, Jama Masjid, and India Gate. Delhi is a food lover's paradise with its diverse culinary scene, offering everything from street food to fine dining. The city is also a shopper's delight with bustling markets like Chandni Chowk and modern shopping malls. Delhi's charm lies in its contrasting landscapes, where ancient monuments coexist with modern developments, making it a captivating destination for travelers."].join();
 var agra=["Agra, located in the state of Uttar Pradesh, India, is a city of immense historical significance, best known for the iconic Taj Mahal. The Taj Mahal, a UNESCO World Heritage Site, is a majestic marble mausoleum built by Emperor Shah Jahan in memory of his beloved wife. Agra Fort, another UNESCO World Heritage Site, is a massive red sandstone fortress that offers breathtaking views of the Taj Mahal. The city is also home to other architectural wonders like the Itmad-ud-Daulah's Tomb and Fatehpur Sikri, showcasing Mughal grandeur. Agra's rich history, splendid architecture, and the ethereal beauty of the Taj Mahal make it a must-visit destination for travelers"].join();
 var amrithsar=["Amritsar, located in the northwestern state of Punjab, India, is a city of rich cultural and historical significance. It is most famous for the Golden Temple, also known as Harmandir Sahib, the holiest shrine in Sikhism. The temple's stunning golden architecture and its serene surroundings attract millions of visitors each year. Amritsar is also known for the Jallianwala Bagh, a memorial garden that commemorates the tragic massacre of 1919. The city is a culinary delight, offering mouthwatering Punjabi cuisine, including the famous Amritsari kulcha and lassi. Amritsar's vibrant markets, bustling streets, and warm Punjabi hospitality make it a must-visit destination for experiencing Sikh culture and history."].join();
 var udaipur=["Udaipur, often referred to as the Venice of the East, is a captivating city in the state of Rajasthan, India. It is renowned for its magnificent palaces, serene lakes, and rich history. The City Palace, situated on the banks of Lake Pichola, is a splendid architectural masterpiece. Udaipur's picturesque Lake Palace, located in the middle of Lake Pichola, is a must-visit attraction. The city's vibrant bazaars offer traditional Rajasthani handicrafts and artwork. Udaipur's romantic ambiance, stunning landscapes, and regal charm make it a popular destination for couples and travelers seeking a royal experience."].join();
  var goaimage =["assets/images/Goa.jpeg"];
  
}