### Prompt: Write a short document that explains Swift’s type-inference system and why developers should care.
--------------------------

## Documentation: Swift’s Type-inference System
First, we will cover the basics of Swift's type inference system by describing type safety and generic functions. Then we will walk through a specific example of where type inference is used with type annotation for type casting. We will end by testing some sample code in a Playground.

## 1. Type Inference
Type inference will clean up our source code by decreasing the need to annotate types that the compiler can infer for us.

#### Type Safety
Swift is a type safe language and requires every expression to have a type at compile-time. If an entity is created and a type is not assigned, the compiler will crash and we will not be able to run our code. This requirement will prevent conflicting type crashes during run time.

If you have experience with type safe languages such as Objective-C, Java and C#, you know that type must be annotated each time a new expression is created. In addition to type annotation, Swift uses type inference to determine the type. Type inference is the process by which the compiler can evaluate the values you provide and conclude the type of a particular expression.

```swift
// Create a variable and annonate the type as `String`.

var groundWater: String = "sourced through springs and wells"

// Create a variable and allow Swift's type inference system to deduce the type `String`.

var drought = "a shortage of water resulting from abnormally low rainfall"
```

#### Generic Functions
Generic functions allow us to pass in any type to our function when it is called. Generic functions are defined with *type parameters*, meaning parameters that are annotated with a *placeholder* for a type instead of an *actual* type (e.g. `String`, `Int`). Type parameters allow the parameter type to be inferred by the argument type each time the function is called. Creating generic functions allow us to write less code because we can reuse the same function for different argument types.

The placeholder for a type parameter is named and specified in angle brackets after the function name. Multiple type parameters can be implemented by writing a comma-separated list within the angle brackets.

```swift
// Define a generic function with two placeholder parameters.

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

## 2. Type Annotation Required
While type inference cleans up our source code, type annotation is required when doing things like type casting and type coercion.

#### Type Casting
When working with a hierarchy of classes and subclasses we need to be more explicit about acceptable types. Type casting can be used with a hierarchy of classes and subclasses to check the type of a particular class instance and to cast that instance to another class within the same hierarchy.

```swift
// Create a class called Plant.
class Plant {
    var name: String
    init(name: String) {
        self.name = name
    }
}

// Create a subclass of Plant called Perennial.
class Perennial: Plant {
    var dormantSeason: String
    init(name: String, dormantSeason: String) {
        self.dormantSeason = dormantSeason
        super.init(name: name)
    }
}

// Create a subclass of Plant called Succulent.
class Succulent: Plant {
    var waterStorage: String
    init(name: String, waterStorage: String) {
      self.waterStorage = waterStorage
      super.init(name: name)
    }
}

let myPlants = [
    Perennial(name: "Fern", dormantSeason: "winter"),
    Succulent(name: "Burro's Tail", waterStorage: "leaves")
]
```

The type of "myPlants" is inferred to be `Plant`. If you iterate over the contents of `myPlants`, the items you receive back are typed as `Plants`, and not as `Perennial` or `Succulent`. When you have a constant or variable of a certain class type that refers to an instance of a subclass, you can try to downcast to the subclass type with `as?` or `as!`.

```swift
// Create a function that will downcast the Plant instances to their subclasses and access a property from their individual class.

func downcastAndPrint(plants:[Plant]) {
    for item in myPlants {
        if let perennial = item as? Perennial {
            print("A \(perennial.name) will be dormant during \(perennial.dormantSeason).")
        } else if let succulent = item as? Succulent {
            print("A \(succulent.name) stores water in its \(succulent.waterStorage).")
        }
    }
}

downcastAndPrint(myPlants)
```

-> Include type coercion.

## 3. Experiment
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