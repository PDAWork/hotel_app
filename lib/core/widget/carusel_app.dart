import 'package:flutter/material.dart';

class CaruselApp extends StatefulWidget {
  const CaruselApp({
    super.key,
    required this.imgUrl,
  });

  final List<String> imgUrl;

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
            itemCount: widget.imgUrl.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 257,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    widget.imgUrl[index],
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
                  widget.imgUrl.length,
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
