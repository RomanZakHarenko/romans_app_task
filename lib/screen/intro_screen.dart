import '../imports/index.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  Color? _backGround;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _backGround = ColorGenerator.colorGenerator();
        });
      },
      child: Scaffold(
        backgroundColor: _backGround,
        appBar: CustomAppBar(
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          implyLeading: false,
          title: "My App",
          centerTitle: true,
        ),
        body: const SafeArea(
          child: Center(
            child: CustomText(
              text: 'Hey there',
              letterSpacing: 1.0,
              fontWeight: FontWeight.w700,
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
