##Documentation: Swift’s Type-inference System
First, we will conver how the basics of Swift's type inference system. Then we will walk through specific examples of where type annotation is required. We will end by testing some sample code in a Playground.

## 1. The Basics
Swift is a type safe language and requires every expression to have a type at compile-time. If an entity is created and a type is not assigned, the compiler will crash and we will not be able to run our code. This requirement will prevent conflicting type crashes during run time.

If you have experience with type safe languages (or is it statically?) such as Objective-C, Java and C#, you know that type must be annotated each time a new expression is created. In addition to type annotation, Swift uses type inference to determine the type. Type inference is the process by which the compiler can evaluate the values you provide and conclude the type of a particular expression.

```swift
// Create a variable and annote the type as `String`.

var groundWater: String = "sourced through springs and wells"

// Create a variable and allow Swift's type inference system to deduce the type `String`.

var drought = "a shortage of water resulting from abnormally low rainfall"
```

-> Include generic functions.

## Type Annotation Required
While type inference cleans up our source code, type annotation is required when doing things like type casting and type coericon.

-> Include type casting and type coericon.

## Experiment
Using sample code to experiment in a Playground can demonstrate the complex cases that Swift's type inference system is prepared to handle.

*Type Inference System*. What type does the compiler infer when we create and constant and store the result of multiplying 5 times 10.3?

Tip: Press `option + click` to view the inferred type.

-> Include sample code with type inference working in opposite direction and/or protocols.

Notes from review:

    + Make writing sample more substantive

    + More complicated examples

    + Add example where type inference works in opposite direction

    + Protocols

    + Generics

    + Due on Thursday, 5/5/16