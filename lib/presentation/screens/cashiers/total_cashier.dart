import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:venti_app/export_links.dart';

class TotalCashierScreen extends StatefulWidget {
  static const name = 'totalcashiers-screen';
  const TotalCashierScreen({Key? key}) : super(key: key);

  @override
  State<TotalCashierScreen> createState() => _TotalCashierScreenState();
}

class _TotalCashierScreenState extends State<TotalCashierScreen> {
  late PageController _pageController;
  List<Cashiers> movies = [];
  int currentIndex = 0;
  double pageValue = 0.0;

  @override
  void initState() {
    super.initState();
    movies = rawData
        .map(
          (data) => Cashiers(
            title: data["title"],
            index: data["index"],
            image: data["image"],
          ),
        )
        .toList();
    _pageController = PageController(
      initialPage: currentIndex,
      viewportFraction: 0.8,
    )..addListener(() {
        setState(() {
          pageValue = _pageController.page!;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    // final deviceWidth = MediaQuery.of(context).size.width;
    // final reversedMovieList = movies.reversed.toList();
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // Stack(
            //   children: reversedMovieList.map((movie) {
            //     return ImageSlider(
            //       pageValue: pageValue,
            //       image: movie.image,
            //       index: movie.index - 1,
            //     );
            //   }).toList(),
            // ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.white,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.4, 0.85]),
              ),
            ),
            AnimatedPages(
              pageValue: pageValue,
              pageController: _pageController,
              pageCount: movies.length,
              onPageChangeCallback: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              child: (index, _) => MovieDetails(
                movies[index],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 55),
              child: IconButton(
                onPressed: () => context.go('/home-screen'),
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
                splashColor: Colors.blue,
              ),
            ),
            const Positioned(
              bottom: 32.0,
              left: 0.0,
              right: 0.0,
              child: CustomButtonBlack(
                  destination: '/home-screen', buttonText: 'Modificar Cajero'),
            ),
          ],
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: IconButton(
//                 onPressed: () => context.go('/home-screen'),
//                 icon: const Icon(
//                   Icons.arrow_back_ios_new,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 25),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 25),
//               child: Text(
//                 'Cajeros Creados',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 22,
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
//               child: CustomTextField(
//                 obscureText: true,
//                 labelText: 'Contraseña',
//                 hintText: 'Contraseña',
//                 keyboardType: TextInputType.visiblePassword,
//               ),
//             ),
//             const SizedBox(height: 25),
//             const Spacer(),
//             const TextBottomScreens(
//               textPrimary: 'Ver cajeros ',
//               textSecund: 'Creados',
//               textDestination: '/newcashier-screen',
//             ),
//             const SizedBox(height: 16),
//           ],
//         ),
//       ),
//     );
//   }
// }
