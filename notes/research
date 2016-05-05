# Focus on researching items:

## 1. Type inference in both directions
_________________________


## 2. Protocols
_________________________



## 3. Generics
_________________________

### LK - Summary:
Generic functions are defined with *type parameters*, meaning paramaters are annotated with a *placeholder* for a type instead of an *actual* type (e.g. `String`, `Int`). Type parameters allow the parameter type to be inferred by the argument type each time the function is called.

The placeholder for a type parameter is named and specified in angle brackets after the function name. Multiple type parameters can be implemented by writing a comma-separated list within the angle brackets.

Define a function that will take values of two separate types and print them.
```
func printChosenColor<T,U>(a: T, b: U) {
    print("You chose the color:", a, b)
}

var myColorDecimal = 5649055
var myColorName = "purple"

printChosenColor(myColorDecimal, b: myColorName)
// You chose the color: 5649055 purple
// a is inferred as type Int, while b is inferred as type String

printChosenColor(myColorName, b: myColorDecimal)
// You chose the color: purple 5649055
// a is inferred as type String, while b is inferred as type Int
```

--------------------------------------
### Swift Docs -  Generics:
https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Generics.html

Generic functions can work with any type.

`func swapTwoValues<T>(inout a: T, inout _ b: T)`

The generic version of the function uses a *placeholder* type name (called `T`, in this case) instead of an actual type name (such as `Int`, `String`, or `Double`). The placeholder type name doesn’t say anything about what `T` must be, but it does say that both a and b must be of the same type `T`, whatever `T` represents. The actual type to use in place of `T` will be determined each time the `swapTwoValues(_:_:)` function is called.

The other difference is that the generic function’s name `(swapTwoValues(_:_:))` is followed by the placeholder type name (`T`) inside angle brackets (`<T>`). The brackets tell Swift that `T` is a placeholder type name within the `swapTwoValues(_:_:)` function definition. Because `T` is a placeholder, Swift does not look for an actual type called `T`.

The `swapTwoValues(_:_:)` function can now be called in the same way as `swapTwoInts`, except that it can be passed two values of any type, as long as both of those values are of the same type as each other. Each time `swapTwoValues(_:_:)` is called, the type to use for `T` is inferred from the types of values passed to the function.

except that it can be passed two values of any type, as long as both of those values are of the same type as each other

## 4. Annotate the type -
_________________________

  + when using the “as” operator to type cast

  + type coercion

  + when the compiler isn't able to infer the type on its own