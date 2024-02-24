
import 'package:flutter/material.dart';
import 'package:sayur_ui_app/core.dart';
import '../view/introduce_view.dart';

class IntroduceController extends State<IntroduceView> {
    static late IntroduceController instance;
    late IntroduceView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    