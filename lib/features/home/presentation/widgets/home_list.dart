import 'package:assignment_1/core/configs/app_pallate.dart';
import 'package:assignment_1/data/product/models/product.dart';
import 'package:assignment_1/data/product/repository/remote_service.dart';
import 'package:assignment_1/features/cart/data/cart_data.dart';
import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
//////////////////////////////////////////////
  List<Post> post = [];

  var isLoaded = false;
////////////////////////////////////////////////////////////

  @override
  void initState() {
    super.initState();

    //fetch data from API
    getData();
  }

  Future<void> getData() async {
    try {
      final fetchedPosts = await RemoteService().getPost();
      if (fetchedPosts != null) {
        setState(() {
          post = fetchedPosts; // Assign fetched posts
          isLoaded = true;
          print('not null');
        });
      } else {
        setState(() {
          isLoaded = false;
          print(' null');
        });
      }
    } catch (e) {
      print('Error fetching posts: $e');
      setState(() {
        isLoaded = false;
      });
    }
  }

///////////////////////////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) => GridView.builder(
          itemCount: post.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 2 / 3),
          itemBuilder: (context, index) {
            return GridWidget(
              index: index,
              post: post,
            );
          },
        ),
      ),
    );
  }
}

class GridWidget extends StatelessWidget {
  final index;
  final post;
  const GridWidget({super.key, required this.index, this.post});

  @override
  Widget build(BuildContext context) {
    double discountedPrice(double? mrp, double? discountPercent) {
      if (mrp == null || discountPercent == null) return 0.0;
      double result = (discountPercent / 100) * mrp;
      double finalResult = mrp - result;
      return double.parse(finalResult.toStringAsFixed(2));
    }

    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: AppPallate.lightSurface,
      margin: const EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: screenWidth * 0.6, // Responsive width
                height: screenWidth * 0.5, // Responsive height
                decoration: BoxDecoration(
                  border: Border.all(width: 0.4, color: Colors.black26),
                ),
                child: Image.network(
                  post[index].thumbnail.toString(), ///////////////////////
                  fit: BoxFit.cover,
                ),
              ),
              Material(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  splashColor: Colors.pinkAccent,
                  onTap: () {
                    cartData.add(post[index]);
                  },
                  child: Ink(
                    width: screenWidth * 0.2,
                    height: screenWidth * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: AppPallate.darkPink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 8, top: 8),
            child: Text(
              post[index].title.toString(),
              style: Theme.of(context).textTheme.labelMedium,
              maxLines: 1, // Limits the text to 1 line
              overflow: TextOverflow
                  .ellipsis, // Adds "..." at the end if text overflows
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: Text(
              post[index].category.toString(), ////////////////////////////
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8),
                child: Text(
                  post[index].price.toString(), ////////////////////////////

                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8),
                child: Text(
                  discountedPrice(
                          post[index].price, post[index].discountPercentage)
                      .toString(), ////////////////////////////

                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: Text(
              post[index].discountPercentage.toString(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
