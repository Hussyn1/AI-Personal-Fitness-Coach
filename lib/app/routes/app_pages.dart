import 'package:ai_personal_fitness_coach/app/modules/auth/views/login_view.dart';
import 'package:ai_personal_fitness_coach/app/modules/auth/views/signup_view.dart';
import 'package:ai_personal_fitness_coach/app/modules/chat/view/chat_view.dart';
import 'package:ai_personal_fitness_coach/app/modules/home/view/home_view.dart';
import 'package:ai_personal_fitness_coach/app/modules/mainNavigationView/mainNavigation.dart';
import 'package:ai_personal_fitness_coach/app/modules/nutrition/view/nutrition_view.dart';
import 'package:ai_personal_fitness_coach/app/modules/profile/view/profile_view.dart';
import 'package:ai_personal_fitness_coach/app/modules/workout/view/workout_view.dart';
import 'package:ai_personal_fitness_coach/app/routes/app_routes.dart';
import 'package:get/get.dart';

// Import your views and bindings here
// import '../modules/auth/views/login_view.dart';
// import '../modules/auth/views/register_view.dart';
// import '../modules/auth/bindings/auth_binding.dart';
// import '../modules/home/views/home_view.dart';
// import '../modules/home/bindings/home_binding.dart';
// ... other imports

class AppPages {
  static const initial = AppRoutes.login;

  static final routes = [
    GetPage(
      name: AppRoutes.mainnavigationview,
      page: () => const MainNavigationView(),
      // binding: SplashBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
      // binding: AuthBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => const RegisterView(),
      // binding: AuthBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      // binding: HomeBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.workoutList,
      page: () => const WorkoutListView(),
      // binding: WorkoutBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.nutritionView,
      page: () => const NutritionView(),
      // binding: WorkoutBinding(),
      transition: Transition.rightToLeft,
    ),
    // GetPage(
    //   name: AppRoutes.poseCamera,
    //   page: () => const PoseCameraView(),
    //   // binding: WorkoutBinding(),
    //   transition: Transition.downToUp,
    // ),
    // GetPage(
    //   name: AppRoutes.calorieTracker,
    //   page: () => const CalorieTrackerView(),
    //   // binding: NutritionBinding(),
    //   transition: Transition.rightToLeft,
    // ),
    // GetPage(
    //   name: AppRoutes.mealPlan,
    //   page: () => const MealPlanView(),
    //   // binding: NutritionBinding(),
    //   transition: Transition.rightToLeft,
    // ),
    GetPage(
      name: AppRoutes.chat,
      page: () => const ChatView(),
      // binding: ChatBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfileView(),
      // binding: ProfileBinding(),
      transition: Transition.rightToLeft,
    ),
    // GetPage(
    //   name: AppRoutes.history,
    //   page: () => const HistoryView(),
    //   // binding: HistoryBinding(),
    //   transition: Transition.rightToLeft,
    // ),
  ];
}
