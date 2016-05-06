### Prompt: Write a short document that explains Swift’s type-inference system and why developers should care.
--------------------------

## Documentation: Swift’s Type-inference System
In "Part 1: Type Inference," we will cover the basics of Swift's type inference system by describing type safety and generic functions. In "Part 2: Type Inference & Type Annotation," we will walk through an example that uses both type inference and type annotation for type casting.

## Part 1: Type Inference
If you have experience with type safe languages such as Objective-C, Java or C#, you know that type must be annotated each time a new expression is created. In addition to type annotation, Swift uses type inference to identify a type. Type inference is the process by which the compiler can evaluate the values you provide and conclude the type of a particular expression. Type inference cleans up our source code by decreasing the need to write repetitive type identifiers that can be inferred by the compiler.

#### Type Safety
Swift is a type safe language and requires every expression to have a type at compile-time. If an expression is created and a type is not assigned, the compiler will crash and we will not be able to run our code. This requirement will prevent conflicting type crashes during run time.

```swift
// Create a variable and annotate the type as `String`.
var groundWater: String = "sourced through springs and wells"

// Create a variable and allow Swift's type inference system to deduce the type `String`.
var drought = "a shortage of water resulting from abnormally low rainfall"
```

#### Generic Functions
Generic functions allow us to pass in any type to our function when it is called. Generic functions are defined with *type parameters*, meaning parameters that are annotated with a *placeholder* for a type instead of an *actual* type (e.g. `String`, `Int`). Type parameters allow the parameter type to be inferred by the argument type each time the function is called. Creating generic functions that rely on type inference allows us to write less code because we can reuse the same function for different argument types.

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

## Part 2: Type Inference & Type Annotation
As seen in the section above, type inference allows us to write flexible code. Type annotation allows us to be explicit about acceptable types and is required in type casting. Type inference and type annotation can be used together to make our source code more dynamic.

#### Type Casting
When working with a hierarchy of classes and subclasses we need to be more explicit about acceptable types. Type casting can be used with classes and subclasses to check the type of a particular class instance and to cast that instance to another class within the same hierarchy.

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
```
When an array is composed of items with different classes, type inference will try to find a common super class.

```swift
// Create an array that will store an instance of Perennial and Succulent.
let myPlants = [
    Perennial(name: "Fern", dormantSeason: "winter"),
    Succulent(name: "Burro's Tail", waterStorage: "leaves")
]

// The `myPlants` array is composed of instances from a common super class `Plants`.  Array items in `myPlants` will be inferred as type `Plants`.
```
The `as?` operator can be used when we try to downcast to an unknown subclass. If we are sure that the downcast will be successful, then we can use the `as!` operator.

```swift
// Create a function that will interate over each item in myPlants, downcast each Plant instance to its subclass, and then access a property from its newly identified class.

func downcastAndPrint(plants:[Plant]) {
    for item in plants {
        if let perennial = item as? Perennial {
            print("A \(perennial.name) will be dormant during \(perennial.dormantSeason).")
        } else if let succulent = item as? Succulent {
            print("A \(succulent.name) stores water in its \(succulent.waterStorage).")
        }
    }
}

downcastAndPrint(myPlants)
```

Swift's type inference system makes our source code readable and compact by decreasing the need to write repetitive type identifiers. Type inference plays a key role in the functionality of placeholder parameters, which permit the reusability of generic functions with different argument types. Type inference and type annotation can be used together to make our source code flexible and dynamic by permitting various types and downcasting others.