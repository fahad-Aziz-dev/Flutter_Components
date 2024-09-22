import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class AnimatedLiquidSwipablePage extends StatefulWidget {
  @override
  State<AnimatedLiquidSwipablePage> createState() =>
      _AnimatedLiquidSwipablePageState();
}

class _AnimatedLiquidSwipablePageState
    extends State<AnimatedLiquidSwipablePage> {
  LiquidController _controller = LiquidController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        liquidController: _controller,
        pages: _pages,
        slideIconWidget: const Icon(Icons.arrow_back_ios),
        positionSlideIcon: 0.6,
        waveType: WaveType.circularReveal,
        onPageChangeCallback: (value) {},
      ),
    );
  }

  final List<LiquidSwipeDesign> _pages = [
    LiquidSwipeDesign(
      image:
          'https://www.gulahmedshop.com/media/catalog/product/k/s/kst-43527_1_.jpg?optimize=medium&auto=webp&bg-color=255,255,255&fit=bounds&canvas=2:3&height=525&width=350',
      text: 'Sana Safinaz',
    ),
    LiquidSwipeDesign(
      image:
          'https://www.studibytcs.shop/wp-content/uploads/1717/40/171714081284000_2.jpg',
      text: 'Gull Ahmed',
    ),
    LiquidSwipeDesign(
      image:
          'https://zuriador.com/cdn/shop/files/zuria-dor-ivory-silver-bridal-peshwas-lehenga-1.jpg?v=1721634285&width=1800',
      text: 'Khaadi',
    ),
    LiquidSwipeDesign(
      image:
          'https://i.pinimg.com/736x/07/5b/ee/075bee44ba28b5ce7e115f831d652b7c.jpg',
      text: 'Maria B',
    ),
  ];
}

class LiquidSwipeDesign extends StatelessWidget {
  String? image;
  String? text;

  LiquidSwipeDesign({required this.image, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: ClipRRect(
              child: Image.network(
                '$image',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 140,
            left: 16,
            child: SizedBox(
              width: 200,
              child: Text(
                '$text',
                softWrap: true,
                style: const TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LiquidPagesModel {
  String? image;
  String? title;

  LiquidPagesModel({required this.image, required this.title});
}
