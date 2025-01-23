import 'package:flutter/material.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class CarouselItem {
  final String image;
  final String title;
  // final String description;

  CarouselItem({
    required this.image,
    required this.title,
    // required this.description,
  });
}

final List<CarouselItem> items = [
  CarouselItem(
    image: Assets.images.diving.path,
    title: 'Diving',
    // description:
    //     'I love traveling to coastal destinations, as it allows me to pursue my passion for diving. Most recently, I explored the Red Sea, immersing myself in its vibrant culture and breathtaking marine life.',
  ),
  CarouselItem(
    image: Assets.images.dfr.path,
    title: 'Automotive Industry',
    // description:
    //     'In a student organization, I embraced a leadership role overseeing marketing and media, which allowed me to deepen my understanding of engineering and the automotive industry.',
  ),
  CarouselItem(
    image: Assets.images.painting.path,
    title: 'Painting',
    // description:
    //     'Growing up, I developed a strong interest in traditional arts and explored digital media along the way. I’ve discovered that oil painting, in particular, serves as a relaxing and fulfilling hobby.',
  ),
  CarouselItem(
    image: Assets.images.pickleball.path,
    title: 'Pickleball',
    // description:
    //     'In my local community, I have built meaningful friendships through pickleball, connecting with a supportive and inspiring group of people.',
  ),
];
