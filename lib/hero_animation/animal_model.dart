class Animal {
  String imageUrl;
  String title;
  String subtitle;
  String fact;

  Animal({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.fact,
  });
}

List<Animal> animals = [
  Animal(
    imageUrl: 'assets/images/bear.jpg',
    title: 'Bear',
    subtitle: 'Ursidae',
    fact:
        'Bears are known for their incredible sense of smell, which is believed to be up to 100 times better than that of humans. This powerful sense of smell helps bears to find food over long distances, detect potential predators, and locate potential mates. In fact, bears can smell food from up to 20 miles away! Bears also have a highly developed sense of taste, with a preference for sweet and fatty foods, which helps them to store up fat reserves for the winter months when food may be scarce.',
  ),
  Animal(
    imageUrl: 'assets/images/cat.jpg',
    title: 'Cat',
    subtitle: 'Felis catus',
    fact:
        'Cats have an extraordinary sense of hearing and can hear frequencies that are too high for human ears. They can hear sounds up to 65,000 Hz, compared to humans who can only hear sounds up to 20,000 Hz. This incredible hearing ability helps cats to detect even the smallest of prey and is also useful for communication with other cats.',
  ),
  Animal(
    imageUrl: 'assets/images/dog.jpg',
    title: 'Dog',
    subtitle: 'Canis lupus familiaris',
    fact:
        'Dogs have an amazing sense of smell and are capable of detecting scents that are far beyond what humans are capable of. For example, dogs can detect certain odors in parts per trillion, which is equivalent to detecting a teaspoon of sugar in two Olympic-sized swimming pools. This incredible sense of smell makes dogs valuable in a variety of fields, such as search and rescue, detection of drugs and explosives, and medical detection of diseases like cancer and diabetes.',
  ),
  Animal(
    imageUrl: 'assets/images/lion.jpg',
    title: 'Lion',
    subtitle: 'Panthera leo',
    fact:
        'Lions are the only cats that live in groups called prides, which typically consist of several females, their cubs, and a few males. The females in the pride work together to hunt for food and raise their young, while the males defend the territory and protect the pride from outside threats. Lions are social animals and rely on their pride for survival, as they are able to take down much larger prey when hunting together.',
  ),
  Animal(
    imageUrl: 'assets/images/tiger.jpg',
    title: 'Tiger',
    subtitle: 'Panthera tigris',
    fact:
        'Tigers are excellent swimmers and are known to enjoy spending time in the water. They are capable of swimming long distances and have been observed swimming across rivers and lakes. In fact, tigers are one of the few big cats that are known to enjoy swimming. Their love of water is believed to be due in part to the hot and humid climates in which they live, as swimming can help to cool them down. Tigers are also skilled hunters in the water, and will sometimes hunt prey like fish and crocodiles.',
  ),
];
