import 'package:flutter/material.dart';

import '../../../core/enum/view_state.dart';


class BaseController extends ChangeNotifier {
  ViewState _viewState = ViewState.idle;

  ViewState get viewState => _viewState;

  set viewState(ViewState newViewState){
    _viewState = newViewState;
    notifyListeners();
  }
}