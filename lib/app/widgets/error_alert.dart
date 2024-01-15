import 'package:flutter/material.dart';
import 'package:lens_new/app/data/models/error_model.dart';
import 'package:lens_new/core/theme/color_data.dart';
import 'package:lens_new/core/values/dimensions.dart';

class ErrorAlert extends StatelessWidget {
  final ErrorModel data;
  const ErrorAlert({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
      decoration: BoxDecoration(
        color: ColorData.error[200],
        borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Error at : ${data.at}',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: ColorData.error[700],
            ),
          ),
          Text(
            'Error : ${data.title}',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: ColorData.error[700],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '${data.description}',
            style: TextStyle(
              color: ColorData.error[700],
            ),
          ),
        ],
      ),
    );
  }
}
