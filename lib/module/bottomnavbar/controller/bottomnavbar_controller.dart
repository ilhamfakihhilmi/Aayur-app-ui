
import 'package:flutter/material.dart';
import 'package:sayur_ui_app/core.dart';
import '../view/bottomnavbar_view.dart';

class BottomnavbarController extends State<BottomnavbarView> {
    static late BottomnavbarController instance;
    late BottomnavbarView view;

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
        
    