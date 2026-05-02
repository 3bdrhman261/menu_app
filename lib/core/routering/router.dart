
import 'package:app_menu/core/featusers/AddMealScree.dart';
import 'package:app_menu/core/featusers/MealDetailsScreen.dart';
import 'package:app_menu/core/featusers/OnBoarding_screen/Onboarding.dart';
import 'package:app_menu/core/featusers/HomeScreen/homeScreen.dart';
import 'package:app_menu/core/routering/App_routering.dart';
import 'package:go_router/go_router.dart';

class RouterConf {
  static GoRouter goRoute = GoRouter(
    initialLocation: AppRouter.Onboarding,
    routes: [
      GoRoute(
        name: AppRouter.Onboarding,
        path: AppRouter.Onboarding,
        builder: (context, state) => const Onboarding(),
      ),
      GoRoute(
        name: AppRouter.HomeScreen,
        path: AppRouter.HomeScreen,
        builder: (context, state) => const Homescreen(),
      ),
      GoRoute(
        name: AppRouter.MealDetailsScreen,
        path: AppRouter.MealDetailsScreen,
        builder: (context, state) => const Mealdetailsscreen(),
      ),
       GoRoute(
        name: AppRouter.AddMeal,
        path: AppRouter.AddMeal,
        builder: (context, state) => const Addmealscree(),
        ),
         
    ],
  );
}
