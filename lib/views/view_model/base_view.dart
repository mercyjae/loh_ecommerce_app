import 'package:flutter/material.dart';
import 'package:loh_ecommerce_app/routes/locator.dart';
import 'package:provider/provider.dart';

import 'base_view_model.dart';

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget? child)? builder;
  final Function(T)? onModelReady;
  const BaseView({Key? key, this.builder, this.onModelReady}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  late T model;

  @override
  void initState() {
    super.initState();

    model = getIt<T>();

    if (widget.onModelReady != null) {
      Future.delayed(Duration.zero, () {
        widget.onModelReady!(model);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (_) => model,
      child: Consumer<T>(
        builder: widget.builder!,
      ),
    );
  }
}
