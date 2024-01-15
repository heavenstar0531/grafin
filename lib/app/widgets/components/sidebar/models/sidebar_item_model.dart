import 'package:lens_new/app/widgets/components/sidebar/models/sidebar_inner_item_model.dart';

class SidebarItemModel {
  final String name;
  final String icon;
  final String route;
  final List<SidebarInnerItemModel>? innerItems;
  SidebarItemModel({
    required this.name,
    required this.icon,
    required this.route,
    this.innerItems,
  });
}
