import 'package:flutter/material.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/values/enum.dart';

class BaseView extends StatelessWidget {
  final ViewState state;
  final String? errorMsg;
  const BaseView({
    super.key,
    this.state = ViewState.empty,
    this.errorMsg,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main Container
          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: getStateWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  getStateWidget() {
    switch (state) {
      case ViewState.loading:
        return loadingWidget();
      case ViewState.error:
        return errorWidget();
      case ViewState.empty:
      default:
        return const SizedBox();
    }
  }

  Widget errorWidget() {
    return Text(
      'Error : $errorMsg',
      style: TextStyle(
        color: AppColors.error,
      ),
    );
  }

  Widget loadingWidget() {
    return SizedBox(
      width: 40,
      height: 40,
      child: CircularProgressIndicator(
        color: AppColors.primary,
      ),
    );
  }
}
