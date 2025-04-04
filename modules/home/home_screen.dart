import 'package:flutter/material.dart';
import '../../core/theme/colors.dart';
import '../../core/utils/mocks/list_products_mock.dart';
import '../../data/models/product_model.dart';
import 'package:page_transition/page_transition.dart' as page;
import '../../modules/product_details/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> buildCategories() {
    return generateCategories()
        .map(
          (ProductModel e) => Container(
            padding: const EdgeInsets.only(
              left: 15,
              bottom: 10,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll<Color>(
                  e.id == 1 ? Colors.white : AppColors.myBlack,
                ),
                backgroundColor: MaterialStatePropertyAll<Color>(
                  e.id == 1 ? AppColors.myOrange : Colors.white,
                ),
                shape: const MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        30,
                      ),
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          30.0,
                        ),
                      ),
                      child: Container(
                        color: AppColors.myBlack,
                        child: Image.asset(e.image),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      e.title,
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Image.asset(
            'assets/App12/ic_search.png',
          ),
          const SizedBox(
            width: 16.0,
          )
        ],
        leading: IconButton(
          icon: Image.asset(
            'assets/App12/ic_menu.png',
          ),
          onPressed: () => '',
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(
              15.0,
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      14.0,
                    ),
                  ),
                  child: Image.asset('assets/App12/img_banner.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(
                    20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          text: 'New Release',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          text: 'Nike Air\nMax 90',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 28.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                          foregroundColor: MaterialStatePropertyAll<Color>(
                            AppColors.myBlack,
                          ),
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Colors.white,
                          ),
                          shape:
                              MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  30,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () => '',
                        child: Text(
                          'Buy Now'.toUpperCase(),
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: buildCategories(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: RichText(
              text: const TextSpan(
                text: 'New Men\'s',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            shrinkWrap: true,
            padding: const EdgeInsets.all(5.0),
            children: generateProducts()
                .map(
                  (e) => Card(
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(14.0),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          page.PageTransition(
                            child: DetailsScreen(),
                            type: page.PageTransitionType.rightToLeft,
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                          top: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              e.image,
                              height: 90.0,
                              width: double.infinity,
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: e.type,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: AppColors.myOrange,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: e.title,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(
                                    text: '\$ ${e.price}',
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Spacer(),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                        Colors.black87,
                                      ),
                                      shape: MaterialStatePropertyAll<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30.0))))),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 4.0,
        backgroundColor: AppColors.myOrange,
        onPressed: () {},
        child: Container(
          margin: const EdgeInsets.all(15.0),
          child: Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 30.0,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/App12/ic_shop.png',
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/App12/ic_wishlist.png',
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/App12/ic_notif.png',
              ),
            ),
            const SizedBox(
              width: 2.0,
            )
          ],
        ),
      ),
    );
  }
}
