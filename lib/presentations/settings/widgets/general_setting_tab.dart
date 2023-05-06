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
                      ListTile(
                        leading: Image.asset(
                          'images/resume.png',
                          height: 50,
                          width: 50,
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.contain,
                        ),
                        title: Text(
                          'Personal Info',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
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
                      Divider(
                        thickness: 0.5,
                        height: 30,
                        color: Theme.of(context).dividerColor,
                      ),
                      //////////////////////////////////////////////////////////////////
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.45,
                            child: Text(
                              "Name",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: CustomerTextField(
                              isDense: true,
                              title: '',
                              prefixWidget: const Icon(Icons.person),
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w300),
                              hint: 'Your Name',
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 0.5,
                        height: 30,
                        color: Theme.of(context).dividerColor,
                      ),
                      //////////////////////////////////////////////////////////////////
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.45,
                            child: Text(
                              "Email Address",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: CustomerTextField(
                              isDense: true,
                              prefixWidget: const Icon(Icons.email_outlined),
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w100),
                              hint: 'Email',
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 0.5,
                        height: 30,
                        color: Theme.of(context).dividerColor,
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
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                    text:
                                        '\nThis will be display on your profile',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
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
                                    shape: BoxShape.circle,
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Theme.of(context)
                                        .dividerColor
                                        .withOpacity(0.05),
                                    child: Icon(Icons.person,
                                        color: Theme.of(context).primaryColor),
                                  ),
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
                                vertical: 10,
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
                                    borderRadius: BorderRadius.circular(50),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Theme.of(context)
                                          .dividerColor
                                          .withOpacity(0.05),
                                      child: Center(
                                        child: Icon(
                                          Icons.cloud_upload_outlined,
                                          color: Theme.of(context).primaryColor,
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
                      Divider(
                        thickness: 0.5,
                        height: 30,
                        color: Theme.of(context).dividerColor,
                      ),
                      //////////////////////////////////////////////////////////////////
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.45,
                            child: Text(
                              "Gender",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Theme.of(context).canvasColor,
                                border: CommonAppUIConfig.primaryBorder,
                                borderRadius:
                                    CommonAppUIConfig.primaryRadiusBorder,
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.info,
                                      color: Theme.of(context)
                                          .dividerColor
                                          .withOpacity(0.4)),
                                  const SizedBox(width: 5),
                                  DropdownButton<int>(
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
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 0.5,
                        height: 30,
                        color: Theme.of(context).dividerColor,
                      ),

                      //////////////////////////////////////////////////////////////////

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.45,
                            child: Text(
                              "Date Born",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                // WidgetsBinding.instance
                                //     .addPostFrameCallback((timeStamp)  {

                                // });
                                Future.delayed(
                                  const Duration(milliseconds: 200),
                                  () => showDatePicker(
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
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5,
                                      color: Theme.of(context).dividerColor),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  children: [
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
                                      child: Icon(
                                        Icons.calendar_month,
                                        color: Theme.of(context)
                                            .dividerColor
                                            .withOpacity(0.4),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 0.5,
                        height: 30,
                        color: Theme.of(context).dividerColor,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.45,
                            child: Text(
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                              "Phone Number",
                            ),
                          ),
                          Expanded(
                            child: CustomerTextField(
                              isDense: true,
                              prefixWidget: Icon(
                                Icons.phone,
                                color: Theme.of(context)
                                    .dividerColor
                                    .withOpacity(0.4),
                              ),
                              title: '',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w300),
                              hint: 'Phone Number',
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 0.5,
                        height: 30,
                        color: Theme.of(context).dividerColor,
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
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
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
