## About 
A demo of a possible bug in `built_value` error reporting when SDK collections are used.

When using an SDK `List` (rather than a `build_collection` `BuiltList`) in a class, normally `build_value` reports an error and suggest that you replace it with `BuiltList`.

But this only happens when the `List` and other SDK collections; `Map` and `Set` don't have a generic type parameter.

This is the issue that original added the functionality:     - https://github.com/google/built_value.dart/issues/254

This error is incorrectly only reported when there is no type parameter, it should be there regardless of the generic type:

```
[SEVERE] built_value_generator:built_value on lib/src/model.dart:
Error in BuiltValueGenerator for abstract class SdkListModel implements Built<SdkListModel, dynamic>.
Please make the following changes to use BuiltValue:

1. Make field "sdkList" have type "BuiltList". The current type, "List", is not allowed because it is mutable.
2. Make field "sdkSet" have type "BuiltSet". The current type, "Set", is not allowed because it is mutable.
3. Make field "sdkMap" have type "BuiltMap". The current type, "Map", is not allowed because it is mutable.
[INFO] Running build completed, took 616ms
[INFO] Caching finalized dependency graph completed, took 35ms
[SEVERE] Failed after 659ms

```
## Building

Generate the files using: `pub run build_runner build`.


