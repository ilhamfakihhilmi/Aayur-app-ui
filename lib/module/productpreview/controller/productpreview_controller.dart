
import 'package:flutter/material.dart';
import 'package:sayur_ui_app/core.dart';
import '../view/productpreview_view.dart';

class ProductpreviewController extends State<ProductpreviewView> {
    static late ProductpreviewController instance;
    late ProductpreviewView view;

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
        
    