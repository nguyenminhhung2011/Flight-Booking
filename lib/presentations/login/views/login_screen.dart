import 'package:flutter/material.dart';
import '../../../core/components/widgets/custom_dialog_error/error_dialog.dart';
import '../../../core/config/color_config.dart';
import '../../../core/config/common_ui_config.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final ValueNotifier<bool> isLoading = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    print("Here");
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/vecteezy_airplane.jpg")),
      ),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.5,
          vertical: MediaQuery.of(context).size.height * 0.2,
        ),
        decoration: BoxDecoration(color: Colors.white),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
                CommonAppUIConfig.spaceBetweenElementForm,
                InkWell(
                  borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => const ErrorDialog(
                        question: "WARNING",
                        title1: 'THE SERVICE HAVE NOT FINISHED YET !!!',
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.5),
                        borderRadius: CommonAppUIConfig.primaryRadiusBorder),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        // Image(
                        //   image: AssetImage('assets/images/google.png'),
                        //   fit: BoxFit.cover,
                        //   filterQuality: FilterQuality.high,
                        //   height: 30,
                        //   width: 30,
                        // ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Login with Google    ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                CommonAppUIConfig.spaceBetweenElementForm,
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey[350],
                        thickness: 1.5,
                        endIndent: 5,
                      ),
                    ),
                    const Text(
                      'Or',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        indent: 5,
                        color: Colors.grey[350],
                        thickness: 1.5,
                      ),
                    ),
                  ],
                ),
                CommonAppUIConfig.spaceBetweenElementForm,
                TextFormField(
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
                    border: OutlineInputBorder(
                      borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.lock_outline),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    hintText: 'Enter your Password',
                    hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: false,
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Remember Information',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(
                          color: CommonColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                CommonAppUIConfig.spaceBetweenElementForm,
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CommonColor.primaryColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                      ),
                    ),
                    child: ValueListenableBuilder(
                      valueListenable: isLoading,
                      builder: (context, isLoadingValue, child) =>
                          (isLoadingValue as bool)
                              ? const Text(
                                  "Log In",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              : const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ),
                    ),
                  ),
                ),
                CommonAppUIConfig.spaceBetweenElementForm,
                Row(
                  children: const [
                    Text(
                      'Don\'t have an account ? ',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        'Please ! Contact Administrator to be provided Account!',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
