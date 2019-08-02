import 'package:FirstProjectDart/src/api.response.dart';
import 'package:FirstProjectDart/src/api.service.dart';
import 'package:angular/angular.dart';


// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [coreDirectives],
  pipes: [commonPipes],
  providers: [ClassProvider(ApiService)],
)
class AppComponent implements OnInit{
  AppComponent(this._apiService);
  ApiService _apiService;

  Stream<List<User>> users$;

  @override
  void ngOnInit() {
    users$ = _apiService.getUser();
  }
}
