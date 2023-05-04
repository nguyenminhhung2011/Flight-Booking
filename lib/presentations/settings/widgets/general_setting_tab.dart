import 'dart:typed_data';

import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/presentations/settings/widgets/custom_button.dart';
import 'package:flight_booking/presentations/settings/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GeneralSettingsTab extends StatefulWidget {
  const GeneralSettingsTab({super.key});

  @override
  State<GeneralSettingsTab> createState() => _GeneralSettingsTabState();
}

class _GeneralSettingsTabState extends State<GeneralSettingsTab> {
  Uint8List? _image;
  void selectedImage() async {
    // Uint8List image = await pickImage(ImageSource.gallery);
    setState(() {
      // _image = image;
      //convertoBytes();
    });
  }

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: CommonAppUIConfig.primaryDecorationContainer,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal Info',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Update your avatar and personal information here',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.blueGrey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        thickness: 0.2,
                        height: 30,
                        color: Colors.grey,
                      ),
                      //////////////////////////////////////////////////////////////////
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.45,
                            child: Text(
                              "Name",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          const Expanded(
                            child: CustomerTextField(
                              title: '',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                              hint: 'First Name',
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 0.2,
                        height: 30,
                        color: Colors.grey,
                      ),
                      //////////////////////////////////////////////////////////////////
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.45,
                            child: Text(
                              "Email Address",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          Expanded(
                            child: CustomerTextField(
                              prefixWidget: const Icon(
                                Icons.email_outlined,
                                color: Colors.grey,
                              ),
                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                              hint: 'Email',
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 0.2,
                        height: 30,
                        color: Colors.grey,
                      ),
                      //////////////////////////////////////////////////////////////////
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.45,
                            child: RichText(
                              text: TextSpan(
                                text: "Your Photo\n",
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: [
                                  TextSpan(
                                    text:
                                        '\nThis will be display on your profile',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.blueGrey,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          _image == null
                              ? Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle),
                                )
                              : Container(
                                  height: 100.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: MemoryImage(_image!)),
                                  ),
                                ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 25,
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                border: CommonAppUIConfig.primaryBorder,
                                borderRadius:
                                    CommonAppUIConfig.primaryRadiusBorder,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: selectedImage,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.blueGrey[50]!,
                                      child: Center(
                                        child: Icon(
                                          Icons.cloud_upload_outlined,
                                          color: Colors.blueGrey[400],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Click to upload',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                          text:
                                              ' or drag and drop SVG, PNG, JPG or GIF (max 800x400px)',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 0.2,
                        height: 30,
                        color: Colors.grey,
                      ),
                      //////////////////////////////////////////////////////////////////
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.45,
                            child: Text(
                              "Gender",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                color: Theme.of(context).canvasColor,
                                border: CommonAppUIConfig.primaryBorder,
                                borderRadius:
                                    CommonAppUIConfig.primaryRadiusBorder,
                              ),
                              child: DropdownButton<int>(
                                borderRadius:
                                    CommonAppUIConfig.primaryRadiusBorder,
                                underline: const SizedBox(),
                                items: [
                                  'Male',
                                  'FeMale',
                                ]
                                    .asMap()
                                    .entries
                                    .map((gender) => DropdownMenuItem<int>(
                                          value: gender.key,
                                          child: Text(
                                            gender.value,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ))
                                    .toList(),
                                value: 0,
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 0.2,
                        height: 30,
                        color: Colors.grey,
                      ),

                      //////////////////////////////////////////////////////////////////
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.45,
                            child: Text(
                              "Bio",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          Expanded(
                            child: CustomerTextField(
                              hint: 'Enter your Bio',
                              maxLine: 5,
                              borderSide: BorderSide(
                                color: Colors.blue[100]!,
                                width: 0.2,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 0.2,
                        height: 30,
                        color: Colors.grey,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.45,
                            child: Text(
                              "Date Born",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 0.5, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      DateFormat()
                                          .add_yMMMEd()
                                          .format(DateTime.now()),
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final choice = await showDatePicker(
                                        context: context,
                                        firstDate: DateTime(2010),
                                        lastDate: DateTime(2030),
                                        initialDate: DateTime.now(),
                                        builder: (context, child) {
                                          return Center(
                                              child: SizedBox(
                                            width: 1000.0,
                                            height: 1100.0,
                                            child: child,
                                          ));
                                        },
                                      );
                                      if (choice != null) {}
                                    },
                                    child: const Icon(
                                      Icons.calendar_month,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 0.2,
                        height: 30,
                        color: Colors.grey,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.45,
                            child: Text(
                              "Phone Number",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          const Expanded(
                            child: CustomerTextField(
                              title: '',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                              hint: 'Phone Number',
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 0.2,
                        height: 30,
                        color: Colors.grey,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      CommonAppUIConfig.primaryRadiusBorder),
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width * 0.5, 50),
                              backgroundColor: Theme.of(context).primaryColor),
                          child: Text(
                            "Update Profile",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }
}
