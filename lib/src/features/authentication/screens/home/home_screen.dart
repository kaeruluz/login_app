import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import '../../../../constants/sizes.dart';

class ImageUpload extends StatefulWidget {
  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appBarTitle),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(defaultSize),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                // pick image

                ImagePicker imagePicker = ImagePicker();
                XFile? file =
                    await imagePicker.pickImage(source: ImageSource.gallery);
                print("path is " + '${file?.path}');
                if (file == null) return;

                // dart core
                String uniqueFileName =
                    DateTime.now().millisecondsSinceEpoch.toString();

                // upload to firebase storage
                Reference referenceRoot = FirebaseStorage.instance.ref();
                Reference referenceDirImages =
                    referenceRoot.child(uniqueFileName);

                // create reference for image to be stored
                Reference referenceImageToUpload =
                    referenceDirImages.child('image_name');

                //handle errors/success
                try {
                  // store the file
                  await referenceImageToUpload.putFile(File(file!.path));

                  // success: get downloadUrl
                  imageUrl = await referenceImageToUpload.getDownloadURL();
                } catch (error) {}
              },
              child: Container(
                child: Image.asset(uploadImg),
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  border: Border.all(color: Colors.white),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                      blurRadius: 1,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  if (imageUrl.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Please upload an Image.')));
                    return;
                  }

                  Map<String, String> dataToSend = {
                    'image': imageUrl,
                  };
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  foregroundColor: whiteColor,
                  backgroundColor: secondaryColor,
                  side: const BorderSide(color: secondaryColor),
                  padding: const EdgeInsets.symmetric(vertical: buttonHeight),
                ),
                child: Text(uploadImgButton.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
