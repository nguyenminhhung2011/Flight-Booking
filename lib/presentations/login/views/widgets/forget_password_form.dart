import 'package:flight_booking/core/config/color_config.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flutter/material.dart';

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({
    super.key,
    required this.comebackToLoginForm,
  });
  final Function() comebackToLoginForm;
  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  late final PageController pageController;
  TextEditingController textController = TextEditingController();

  var currentPage = ValueNotifier(0);

  late final Widget flowWidget;

  void _navigatePage(int index) {
    if (index > 0 && index < 3) {
      currentPage.value = index;
    }
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0, keepPage: true);
    flowWidget = ValueListenableBuilder<int>(
      valueListenable: currentPage,
      builder: (context, index, child) => IndexedStack(
        alignment: Alignment.center,
        index: index,
        children: [
          EnterEmailPage(
            comebackToLoginForm: widget.comebackToLoginForm,
            currentPage: currentPage.value,
            textController: textController,
            nextPage: _navigatePage,
          ),
          // VerifiedAnnouncementScreen(
          //   email: textController.text,
          //   currentPage: currentPage.value,
          //   nextPage: _navigatePage,
          // ),
          EnterPasswordWidget(
            email: textController.text,
            nextPage: _navigatePage,
          ),
          const CongratulationScreen(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SizedBox(
        height: deviceHeight * 0.4,
        width: deviceWidth * 0.45,
        child: flowWidget,
      ),
    );
  }
}

class EnterEmailPage extends StatelessWidget {
  EnterEmailPage({
    super.key,
    required this.nextPage,
    required this.textController,
    required this.currentPage,
    required this.comebackToLoginForm,
  });
  final Function(int) nextPage;
  final Function() comebackToLoginForm;
  final TextEditingController textController;
  final int currentPage;
  final _isLoadingNotify = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return ValueListenableBuilder<bool>(
      valueListenable: _isLoadingNotify,
      builder: (context, isLoading, child) => isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: comebackToLoginForm,
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        'Forget Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Please Enter your email to find your account.",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 17,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: true,
                      controller: textController,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.email_outlined),
                        hintText: "Enter your Email",
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: deviceWidth * 0.4,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (textController.text.isNotEmpty) {
                          _isLoadingNotify.value = true;
                        }
                        nextPage(currentPage + 1);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CommonColor.primaryColor,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                        ),
                      ),
                      child: const Text(
                        "Sent Verification Email",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

// ignore: must_be_immutable
class VerifiedAnnouncementScreen extends StatelessWidget {
  VerifiedAnnouncementScreen(
      {super.key,
      required this.email,
      required this.currentPage,
      required this.nextPage});
  final String email;
  final int currentPage;
  final void Function(int) nextPage;

  bool isVerified = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/checked.png',
                ),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          Text(
            'We have sent a verification email to: $email',
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Expanded(
            child: Text(
              'Click the link in your email to verify your account. If you can\'t find the email check your spam folder',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EnterPasswordWidget extends StatelessWidget {
  EnterPasswordWidget({super.key, required this.email, required this.nextPage});
  final Function(int) nextPage;
  final String email;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController reenterPasswordController =
      TextEditingController();

  final isLoading = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isLoading,
      builder: (context, isLoadingValue, child) => isLoadingValue
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Create Your New Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.lock_outline),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      hintText: 'Enter your New Password',
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: reenterPasswordController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.lock_outline),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      hintText: 'Reenter your Password',
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                      labelText: 'Reenter Password',
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () async {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CommonColor.primaryColor,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                        ),
                      ),
                      child: const Text(
                        "Apply New Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Create Your New Password',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            const SizedBox(height: 25),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: AssetImage('assets/images/checked.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
