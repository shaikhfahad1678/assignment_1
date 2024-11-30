import 'package:assignment_1/core/configs/app_pallate.dart';
import 'package:assignment_1/data/product/models/product.dart';
import 'package:assignment_1/data/product/repository/remote_service.dart';
import 'package:flutter/material.dart';


class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  
//////////////////////////////////////////////
List<Post> post=[];

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
        });
      } else {
        setState(() {
          isLoaded = false;
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
      child: GridView.builder(
        itemCount: post.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2 / 3),
        itemBuilder: (context, index) {
          return GridWidget(index: index,post: post,);
        },
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
                  post[index].thumbnail.toString(),///////////////////////
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                width: screenWidth * 0.2,
                height: screenWidth * 0.08,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: AppPallate.darkPink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 8, top: 8),
            child: Text(
              post[index].title.toString(),////////////////////////////
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: const Text('Apple'),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8),
                child: Text(
                  '₹549',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8),
                child: Text(
                  ' ₹477.85',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: Text(
              '12.96% OFF',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
