import 'dart:typed_data';

import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/presentations/settings/widgets/custom_button.dart';
import 'package:flight_booking/presentations/settings/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../generated/l10n.dart';

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
                          S.of(context).personalInfo,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        S.of(context).updateYourAvatar,
                        style: const TextStyle(
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
                              S.of(context).name,
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
                              hint: S.of(context).yourName,
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
                              S.of(context).emailAddress,
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
                              hint: S.of(context).email,
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
                                text: "${S.of(context).yourPhoto}\n",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                    text: '\n${S.of(context).thisWillDisplay}',
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
                                      text: S.of(context).clickToUpload,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                          text: S.of(context).orDrag,
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
                              S.of(context).gender,
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
                                      S.of(context).male,
                                      S.of(context).female,
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
                              S.of(context).dateBorn,
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
                              S.of(context).phoneNumber,
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
                              hint: S.of(context).phoneNumber,
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
                            S.of(context).updateProfile,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
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
