import 'package:app_menu/core/featusers/Add_meals_screen/AddMealScree.dart';
import 'package:app_menu/core/featusers/Add_meals_screen/meal_Details_screen/MealDetailsScreen.dart';
import 'package:app_menu/core/featusers/HomeScreen/widget/data/mail_model.dart';
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
        builder: (context, state) {
          Meal meal = state.extra as Meal;

          return  Mealdetailsscreen(meal: meal,);
        },
      ),
      GoRoute(
        name: AppRouter.AddMeal,
        path: AppRouter.AddMeal,
        builder: (context, state) => const Addmealscree(),
      ),
    ],
  );
}
