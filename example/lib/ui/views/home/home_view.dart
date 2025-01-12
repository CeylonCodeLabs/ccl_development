import 'package:ccl_ui/ccl_ui.dart';
import 'package:example/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:example/ui/common/app_colors.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        actions: const [NotificationIcon()],
      ),
      body: BackgroundProgress<HomeViewModel>(
        settings: BackgroundProgressSettings(
          backgroundColor: context.colors.error,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  verticalSpaceLarge,
                  Column(
                    children: [
                      Text(
                        S.of(context).helloCeyloncodelabs,
                        style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      verticalSpaceMedium,
                      MaterialButton(
                        color: Colors.black,
                        onPressed: viewModel.incrementCounter,
                        child: Text(
                          viewModel.counterLabel,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      verticalSpaceDefault,
                      MaterialButton(
                        color: kcDarkGreyColor,
                        onPressed: viewModel.showProgress,
                        child: Text(
                          S.of(context).showProgress,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        color: kcDarkGreyColor,
                        onPressed: viewModel.showDialog,
                        child: Text(
                          S.of(context).showDialog,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      MaterialButton(
                        color: kcDarkGreyColor,
                        onPressed: viewModel.showBottomSheet,
                        child: Text(
                          S.of(context).showBottomSheet,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
