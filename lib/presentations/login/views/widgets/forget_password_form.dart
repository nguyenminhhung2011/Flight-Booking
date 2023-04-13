// import 'package:flutter/material.dart';

// class ForgetPasswordForm extends StatefulWidget {
//   const ForgetPasswordForm({super.key});

//   @override
//   State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
// }

// class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
//   late final PageController pageController;
//   TextEditingController textController = TextEditingController();

//   var currentPage = 0.obs;

//   late final Widget flowWidget;

//   void _navigatePage(int index) {
//     if (index > 0 && index < 4) {
//       currentPage.value = index;
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     pageController = PageController(initialPage: 0, keepPage: true);
//     flowWidget = Obx(
//       () => IndexedStack(
//         alignment: Alignment.center,
//         index: currentPage.value,
//         children: [
//           EnterEmailPage(
//             currentPage: currentPage.value,
//             textController: textController,
//             nextPage: _navigatePage,
//           ),
//           VerifiedAnnouncementScreen(
//             email: textController.text,
//             currentPage: currentPage.value,
//             nextPage: _navigatePage,
//           ),
//           EnterPasswordWidget(
//             email: textController.text,
//             nextPage: _navigatePage,
//           ),
//           const CongratulationScreen(),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       elevation: 5,
//       child: SafeArea(
//         child: SizedBox(
//           height: Get.height * 0.4,
//           width: Get.width * 0.45,
//           child: flowWidget,
//         ),
//       ),
//     );
//   }
// }

// class EnterEmailPage extends StatelessWidget {
//   EnterEmailPage(
//       {super.key,
//       required this.nextPage,
//       required this.textController,
//       required this.currentPage});
//   final Function(int) nextPage;
//   final TextEditingController textController;
//   final int currentPage;
//   final _isLoading = false.obs;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.symmetric(vertical: 50),
//         child: Obx(
//           () => _isLoading.value
//               ? const Center(child: CircularProgressIndicator())
//               : Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'Find your account',
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 25),
//                     ),
//                     const SizedBox(height: 20),
//                     Divider(
//                       indent: 5,
//                       color: Colors.grey[350],
//                       thickness: 1.5,
//                     ),
//                     const SizedBox(height: 20),
//                     Text(
//                       "Please Enter your email to find your account.",
//                       style: Theme.of(context).textTheme.headline5,
//                     ),
//                     const SizedBox(height: 20),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: TextFormField(
//                         keyboardType: TextInputType.emailAddress,
//                         autofocus: true,
//                         controller: textController,
//                         decoration: InputDecoration(
//                           suffixIcon: const Icon(Icons.email_outlined),
//                           hintText: "Enter your Email",
//                           hintStyle: const TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.grey),
//                           contentPadding: const EdgeInsets.symmetric(
//                               horizontal: 15, vertical: 10),
//                           labelText: 'Email',
//                           labelStyle: const TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.w500,
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: AppDecoration.primaryRadiusBorder,
//                             borderSide: const BorderSide(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     SizedBox(
//                       height: 50,
//                       width: Get.width * 0.4,
//                       child: ElevatedButton(
//                         onPressed: () async {
//                           if (textController.text.isNotEmpty) {
//                             _isLoading.value = true;
//                             final response = await AuthService.instance
//                                 .forgetPassword(context, textController.text,
//                                     SocketService.instance.socket)
//                                 .timeout(const Duration(seconds: 10));
//                             if (response['isSentLink'] as bool) {
//                               _isLoading.value = false;
//                               nextPage(currentPage + 1);
//                             }
//                           }
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: AppColors.primaryColor,
//                           elevation: 5,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: AppDecoration.primaryRadiusBorder,
//                           ),
//                         ),
//                         child: const Text(
//                           "Sent Verification Email",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//         ));
//   }
// }

// // ignore: must_be_immutable
// class VerifiedAnnouncementScreen extends StatelessWidget {
//   VerifiedAnnouncementScreen(
//       {super.key,
//       required this.email,
//       required this.currentPage,
//       required this.nextPage});
//   final String email;
//   final int currentPage;
//   final void Function(int) nextPage;

//   bool isVerified = false;

//   @override
//   Widget build(BuildContext context) {
//     SocketService.instance.socket.on('verify', (jsonData) {
//       print(jsonData);
//       Future.delayed(
//         const Duration(seconds: 2),
//         () => nextPage(currentPage + 1),
//       );
//     });

//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 50),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             height: 60,
//             width: 60,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               image: DecorationImage(
//                 image: AssetImage(
//                   'assets/images/checked.png',
//                 ),
//                 fit: BoxFit.cover,
//                 filterQuality: FilterQuality.high,
//               ),
//             ),
//           ),
//           Text(
//             'We have sent a verification email to: $email',
//             style: const TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//             ),
//           ),
//           const Expanded(
//             child: Text(
//               'Click the link in your email to verify your account. If you can\'t find the email check your spam folder',
//               style: TextStyle(
//                 fontSize: 17,
//                 fontWeight: FontWeight.normal,
//                 color: Colors.black,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class EnterPasswordWidget extends StatelessWidget {
//   EnterPasswordWidget({super.key, required this.email, required this.nextPage});
//   final Function(int) nextPage;
//   final String email;
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController reenterPasswordController =
//       TextEditingController();

//   final isLoading = false.obs;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: Get.height * 0.5,
//       child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
//           child: Obx(
//             () => isLoading.value
//                 ? const Center(child: CircularProgressIndicator())
//                 : Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Create Your New Password',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 25),
//                       ),
//                       const SizedBox(height: 25),
//                       TextFormField(
//                         obscureText: true,
//                         controller: passwordController,
//                         decoration: InputDecoration(
//                           suffixIcon: const Icon(Icons.lock_outline),
//                           contentPadding: const EdgeInsets.symmetric(
//                               horizontal: 15, vertical: 10),
//                           hintText: 'Enter your New Password',
//                           hintStyle: const TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.grey),
//                           labelText: 'Password',
//                           labelStyle: const TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.w500,
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: AppDecoration.primaryRadiusBorder,
//                             borderSide: const BorderSide(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       TextFormField(
//                         obscureText: true,
//                         controller: reenterPasswordController,
//                         decoration: InputDecoration(
//                           suffixIcon: const Icon(Icons.lock_outline),
//                           contentPadding: const EdgeInsets.symmetric(
//                               horizontal: 15, vertical: 10),
//                           hintText: 'Reenter your Password',
//                           hintStyle: const TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.grey),
//                           labelText: 'Reenter Password',
//                           labelStyle: const TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.w500,
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: AppDecoration.primaryRadiusBorder,
//                             borderSide: const BorderSide(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 25),
//                       SizedBox(
//                         height: 50,
//                         width: 200,
//                         child: ElevatedButton(
//                           onPressed: () async {
//                             if (passwordController.text.isNotEmpty &&
//                                 reenterPasswordController.text.isNotEmpty) {
//                               if (passwordController.text.compareTo(
//                                       reenterPasswordController.text) ==
//                                   0) {
//                                 isLoading.value = true;

//                                 bool isSuccess =
//                                     await AuthService.applyNewPassword(
//                                         email, passwordController.text);

//                                 isLoading.value = false;

//                                 if (isSuccess) {
//                                   print('Changed Password');
//                                   nextPage(3);
//                                 } else {
//                                   Get.dialog(
//                                     const SuccessDialog(
//                                       question: 'Something wrong !!! ',
//                                       title1:
//                                           'Can\'t not send request to server !!!\nPlease Check your Internet',
//                                     ),
//                                   );
//                                 }
//                               }
//                             }

//                             isLoading.value = false;
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: AppColors.primaryColor,
//                             elevation: 5,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: AppDecoration.primaryRadiusBorder,
//                             ),
//                           ),
//                           child: const Text(
//                             "Apply New Password",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//           )),
//     );
//   }
// }

// class CongratulationScreen extends StatelessWidget {
//   const CongratulationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: Get.height * 0.5,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text(
//               'Create Your New Password',
//               style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 25),
//             ),
//             const SizedBox(height: 25),
//             Container(
//               height: 100,
//               width: 100,
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                 image: DecorationImage(
//                   fit: BoxFit.cover,
//                   filterQuality: FilterQuality.high,
//                   image: AssetImage('assets/images/checked.png'),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
