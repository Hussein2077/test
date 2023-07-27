
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class BottomNavBarController extends GetxController {
  next(int index);
}
class BottomNavBarControllerImplement extends BottomNavBarController{
  int selectedIndex = 0;
  @override
  next(index) {
    selectedIndex = index;

    update();

  }


}