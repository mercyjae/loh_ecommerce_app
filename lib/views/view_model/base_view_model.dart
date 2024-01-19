import 'package:flutter/material.dart';

import '../../enum/view_state.dart';


class BaseViewModel extends ChangeNotifier {
  ViewState _viewState = ViewState.idle;
 // NavigationService navigationService = getIt<NavigationService>();
  ViewState get viewState => _viewState;

  set viewState(ViewState newViewState){
    _viewState = newViewState;
    notifyListeners();
  }
}