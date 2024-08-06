// ignore_for_file: public_member_api_docs, sort_constructors_first
class Project {
  final String name;
  final String description;
  final String image1;
  final String image2;
  final String link;
  Project({
    required this.name,
    required this.description,
    required this.image1,
    required this.image2,
    required this.link,
  });
}

List<Project> projectList = [
  Project(
    name: 'Healthy Cart',
    description:
        "Healthy Cart, the ultimate healthcare companion available on both Android and iOS platforms."
        "With Healthy Cart, users gain access to a comprehensive range of hospital services right at their fingertips. "
        "This app showcases a list of hospitals near you, along with the services they provide, ensuring convenient access to healthcare options tailored to your needs."
        " But that's not all – Healthy Cart goes beyond hospital listings by offering additional features to according to your healthcare journey. Need to consult a doctor? "
        "Simply book an appointment through the app. Running low on medications? Order your prescriptions directly from the pharmacy within the app."
        " And if you require immediate assistance or have queries about medications, the app facilitates direct communication with nearby medical shops via call or chat.",
    image1: 'assets/images/healthycart-1.png',
    image2: 'assets/images/healthycart-1.png',
    link: 'https://play.google.com/store/apps/details?id=com.healthy_cart_user',
  ),
  Project(
    name: 'Chahel The e-Learning App',
    description:
        "Chahel Learning App, is a comprehensive e-learning companion available on both Android and iOS platforms. With courses spanning from kindergarten to 12th standard, students can embark on an educational journey customized to their needs. The app features exclusive access to Chahel's private YouTube channel, offering high-quality content designed to support students' academic growth. Whether mastering foundational concepts or tackling advanced topics, the Chahel Learning App provides a structured learning environment for students of all levels. With seamless access to educational resources within the app, students can focus on their studies without distractions.",
    image1: 'assets/images/1.png',
    image2: 'assets/images/2.png',
    link: 'https://play.google.com/store/apps/details?id=com.chahel_learning',
  ),
];
