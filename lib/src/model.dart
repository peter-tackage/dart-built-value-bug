//import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'model.g.dart';

//
// With SDK List with generic parameter; it compiles OK => but it should flag the use of List
//
abstract class SdkListWithGenericParam
    implements Built<SdkListWithGenericParam, SdkListWithGenericParamBuilder> {
  List<String> get sdkList;

  Set<String> get sdkSet;

  Map<String, String> get sdkMap;

  SdkListWithGenericParam._();

  factory SdkListWithGenericParam([updates(SdkListWithGenericParamBuilder b)]) =
      _$SdkListWithGenericParam;
}

// UNCOMMENT THIS TO DEMONSTRATE THE ERROR
// Without a generic parameter in the SDK List and the compiler correctly picks up the error.
//
//abstract class SdkListModel
//    implements Built<SdkListModel, SdkListModelBuilder> {
//  List get sdkList;
//
//  Set get sdkSet;
//
//  Map get sdkMap;
//
//  SdkListModel._();
//
//  factory SdkListModel([updates(SdkListModelBuilder b)]) = _$SdkListModel;
//}

