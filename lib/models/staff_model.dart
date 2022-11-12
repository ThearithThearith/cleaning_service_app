// ignore_for_file: public_member_api_docs, sort_constructors_first
class StaffModel {
  final String name;
  final String title;
  final double rating;
  final String imgPath;
  final double payRate;
  final String about;

  StaffModel({
    required this.name,
    required this.title,
    required this.rating,
    required this.imgPath,
    required this.payRate,
    required this.about,
  });
}

final cleaningStaffs = [
  StaffModel(
    name: 'Madia Mc\'Guenn',
    title: 'Basic Cleaning',
    rating: 4.9,
    imgPath: 'assets/staff/staff4.png',
    payRate: 72,
    about:
        'Deserunt Lorem est nostrud reprehenderit incididunt in excepteur dolore aute consequat id mollit deserunt. Ut eiusmod quis culpa mollit. Officia incididunt fugiat ex excepteur. Laborum et quis occaecat aute irure proident in irure.',
  ),
  StaffModel(
    name: 'Hezekiah Mercado',
    title: 'House Cleaning',
    rating: 4.8,
    imgPath: 'assets/staff/staff1.png',
    payRate: 50,
    about:
        'Fugiat nostrud officia adipisicing velit aute eiusmod ad velit Lorem laboris. Sint culpa ad nulla laborum id ex mollit ipsum. Qui do nostrud et sunt cupidatat sunt. Tempor sint duis ea exercitation exercitation incididunt nulla aliquip eu. Commodo elit velit veniam sunt laboris qui proident est laboris.',
  ),
  StaffModel(
    name: 'Samuel Gaines',
    title: 'Wash Dishes',
    rating: 4.7,
    imgPath: 'assets/staff/staff2.png',
    payRate: 45,
    about:
        'Cupidatat ad ex veniam ea nostrud enim. Aliqua mollit aute ullamco ipsum est. Ea sunt ea fugiat qui nostrud commodo nisi minim sunt amet mollit eiusmod pariatur.',
  ),
  StaffModel(
    name: 'Caroline Horne',
    title: 'Home Laundry',
    rating: 5.0,
    imgPath: 'assets/staff/staff3.png',
    payRate: 30,
    about:
        'Dolore proident aliquip fugiat pariatur commodo ex. Dolor duis voluptate eu commodo aute reprehenderit sit aliquip ullamco eu. Minim ad consectetur ea irure officia. Proident esse qui amet exercitation duis cupidatat qui ad commodo. Amet qui minim laborum enim incididunt id enim magna commodo. Qui duis est aute occaecat incididunt nisi. Veniam anim incididunt nostrud occaecat.',
  ),
  StaffModel(
    name: 'Jimmy Haas',
    title: 'Car Cleaning',
    rating: 4.6,
    imgPath: 'assets/staff/staff5.png',
    payRate: 60,
    about:
        'Minim officia dolor consequat sunt et enim reprehenderit aliquip exercitation cillum Lorem. Tempor magna nisi anim fugiat tempor culpa qui officia ex non sit minim. Proident consequat excepteur commodo culpa sit id non ut elit incididunt culpa. Amet elit ullamco cillum proident. Esse elit mollit esse nisi reprehenderit aliquip. Fugiat cillum eiusmod cillum enim consequat ipsum. Aliqua ipsum cupidatat labore nisi reprehenderit nostrud fugiat.',
  ),
  StaffModel(
    name: 'Paloma Gomez',
    title: 'Kitchen Cleaning',
    rating: 4.9,
    imgPath: 'assets/staff/staff6.png',
    payRate: 65,
    about:
        'Tempor ea pariatur in eu. Lorem id exercitation sunt et. Cupidatat minim duis irure culpa exercitation. Enim adipisicing consequat do deserunt est.',
  ),
];

final recommendedStaffs = [
  StaffModel(
    name: 'Madia Mc\'Guenn',
    title: 'Basic Cleaning',
    rating: 4.9,
    imgPath: 'assets/staff/staff4.png',
    payRate: 72,
    about:
        'Deserunt Lorem est nostrud reprehenderit incididunt in excepteur dolore aute consequat id mollit deserunt. Ut eiusmod quis culpa mollit. Officia incididunt fugiat ex excepteur. Laborum et quis occaecat aute irure proident in irure.',
  ),
  StaffModel(
    name: 'Hezekiah Mercado',
    title: 'House Cleaning',
    rating: 4.8,
    imgPath: 'assets/staff/staff1.png',
    payRate: 50,
    about:
        'Fugiat nostrud officia adipisicing velit aute eiusmod ad velit Lorem laboris. Sint culpa ad nulla laborum id ex mollit ipsum. Qui do nostrud et sunt cupidatat sunt. Tempor sint duis ea exercitation exercitation incididunt nulla aliquip eu. Commodo elit velit veniam sunt laboris qui proident est laboris.',
  ),
  StaffModel(
    name: 'Samuel Gaines',
    title: 'Wash Dishes',
    rating: 4.7,
    imgPath: 'assets/staff/staff2.png',
    payRate: 45,
    about:
        'Cupidatat ad ex veniam ea nostrud enim. Aliqua mollit aute ullamco ipsum est. Ea sunt ea fugiat qui nostrud commodo nisi minim sunt amet mollit eiusmod pariatur.',
  ),
];
