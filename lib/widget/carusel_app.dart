import 'package:flutter/material.dart';

const List<String> imgUrl = [
  "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
  "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
  "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
];

class CaruselApp extends StatefulWidget {
  const CaruselApp({
    super.key,
  });

  @override
  State<CaruselApp> createState() => _CaruselAppState();
}

class _CaruselAppState extends State<CaruselApp> {
  final PageController _controller = PageController(initialPage: 0);
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 257,
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) => setState(() {
              indexPage = value;
            }),
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemCount: imgUrl.length,
            itemBuilder: (context, index) {
              return Container(
                height: 257,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    imgUrl[index],
                    fit: BoxFit.fill,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Text(
                          "🥲",
                          style: TextStyle(fontSize: 50),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              margin: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  imgUrl.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: ClipOval(
                      child: Container(
                        color:
                            index == indexPage ? Colors.black : Colors.black54,
                        width: 7,
                        height: 7,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
