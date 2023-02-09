import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../Src/Core/change.notifier.dart';

class AppProvider {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => AuthenticationNotifier()),


  ];
}
