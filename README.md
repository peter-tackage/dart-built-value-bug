## About 
A demo of a possible bug in `built_value` error reporting when SDK collections are used.

When using an SDK `List` (rather than a `build_collection` `BuiltList`) in a class, normally `build_value` reports an error and suggest that you replace it with `BuiltList`.

But this only happens when the `List` and other SDK collections; `Map` and `Set` don't have a generic type parameter.

This is the issue that original added the functionality:     - https://github.com/google/built_value.dart/issues/254

## Building

Generate the files using: `pub run build_runner build`.


