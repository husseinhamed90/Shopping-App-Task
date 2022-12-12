
import 'package:get/get.dart';

class NavBarController extends GetxController{
  RxInt currentIndex =0.obs;

  void changePage(int newIndex){
    currentIndex.value=newIndex;
  }

  void backToHome(){
    currentIndex.value=0;
  }

}