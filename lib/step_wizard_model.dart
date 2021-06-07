import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_demo/base/base_model.dart';
import 'package:provider/provider.dart';
part 'step_wizard_model.g.dart';

class StepWizardModel extends StepWizardModelBase  with _$StepWizardModel {

  PageController? pageController;

  @override
  void initData(data) {
   pageController = new PageController(initialPage: 0, keepPage: true );
  }

  void goNext() {
    
  }
}

abstract class StepWizardModelBase extends BaseModel with Store {

}