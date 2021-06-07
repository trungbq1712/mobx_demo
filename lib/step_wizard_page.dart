import 'package:flutter/material.dart';
import 'package:mobx_demo/MainPage.dart';
import 'package:mobx_demo/base/base_model.dart';
import 'package:mobx_demo/base/base_widget.dart';
import 'package:mobx_demo/step_wizard_model.dart';

class StepWizardPage extends BaseWidget<StepWizardModel> {
  
  @override
  Widget createView() {
    return Scaffold(
      appBar: _appBar() as PreferredSizeWidget,
      body: _body()
    );
  }

  Widget _appBar() {
    print("Build appbar");
    return AppBar(
      title: Text('Step wizard'),
    );
  }

  Widget _body() {
    return PageView(
      physics:  AlwaysScrollableScrollPhysics (),
      controller: model.pageController,
      children: [
        MainPage(),
        Container(
          child: Text("Step 2"),
        )
      ],
    );
  }

  @override
  void init(data) {
    
  }

  @override
  StepWizardModel get model => _model;
  final StepWizardModel _model = new StepWizardModel();

}