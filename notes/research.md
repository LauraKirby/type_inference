# Focus on researching items:

## 1. Type inference in both directions
_________________________
Incomplete.

## 2. Protocols
Incomplete.

## 3. Generics
Generic functions allow us to pass in any type to our function when it is called. Generic functions are defined with *type parameters*, meaning parameters are annotated with a *placeholder* for a type instead of an *actual* type (e.g. `String`, `Int`). Type parameters allow the parameter type to be inferred by the argument type each time the function is called.

The placeholder for a type parameter is named and specified in angle brackets after the function name. Multiple type parameters can be implemented by writing a comma-separated list within the angle brackets.

--------------
Basic example
--------------
Define a function that will take values of two separate types and print them.
```swift
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

--------------
Added complexity but may make where the type inference is occurring confusing to the audience
--------------
```swift
func printColor<T>(a: T) {
    if a is Int {
        print("The hexadecimal value of your color is ", a)
    } else if a is String {
        print("You chose the color ", a)
    } else {
        print("Please provide the hexadecimal value or the name of your favorite color")
    }
}

var myColorDeci = 5649055
var myColorStr = "purple"

printColor(myColorDeci)
// "The hexadecimal value of your color is 5649055"
// a is inferred as type Int

printColor(myColorStr)
// "You chose the color purple"
// a is inferred as type String

printColor()
// "Please provide the hexadecimal value or the name of your favorite color."
// a is nil
```

## 4. Annotate the type - “as” operator to type cast
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

## 5. Annotate the type - type coercion
Incomplete.

## 6. Annotate the type - when the compiler isn't able to infer the type on its own
Incomplete.

## Sources
_________________________
1. "The Swift Programming Language (Swift 2.2): Generics", https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Generics.html

2. "The Swift Programming Language (Swift 2.2): Type Casting", https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TypeCasting.html

3. http://www.codingexplorer.com/type-casting-swift/ (mentions type inference in both directions)