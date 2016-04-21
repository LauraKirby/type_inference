/*:
## Prompt: 
 Write a short document that explains Swift’s type-inference system and why developers should care.

## Writer's Note:
 Examples given throughout the documentation reference a topic not often covered in the developer community - hydrology. By providing examples on a variety of topics, people from diverse backgrounds may have an easier time relating to the material.

 The documentation consists of three sections. A small icon sits just to the left of the first paragraph. (Due to markup restrictions, images below are not placed in their ideal location.) The three different sections include, 1) Build; 2) Caution; and 3) Experiment.
 
 Sections one and three currently exist within the Swift documentation; however, only three ("Experimentation") is explicitly identified. Section two is new and provides a specific space for advisories to the learning developer.

 Sections will be easily understood through the commonly used symbols implemented. To ensure clarity, there will be a key at the beginning of the documentation that briefly describes the meaning behind each icon.
 
 Many people learn better through the use of images. The icons will allow us to eliminate pieces of text in the current documentation that can be conveyed through an image. The seemingly tactile "build" and "experiment" icons will allow the user to see oneself as a true engineer.
*/

/*:
## Documentation: Swift's Type Inference
 ![Build icon](build_sm.png)


 *Introduction.* Swift requires the types of variable and constants to be declared. As you may have seen before, explicit declaration is the traditional way of type declaration. Swift's type inference is a cleaner and faster way to declare types. While explicit declaration might be rarely required, it is important to consider its usefulness in maintaining readability. Experimenting with type inference in a Playground will demonstrate the breadth of Swift's compiler and type inference system.

 *Type Declaration.* Similar to Objective-C, Swift requires each type to be declared. By declaring the types of constants and variables, our source code is less likely to crash and easier to debug during runtime.

 *Explicit Type Declaration.* In Objective-C type must be explicitly written and we can do the same in Swift.
*/

    //Example 1:
    var waterfall: String

    // Example 2:
    var groundWater: String = "sourced through springs and wells"

/*:
 In "Example 1", listed above, the explicit type declaration will allow the compiler to allocate sufficient space for a variable that will eventually be of type String. "Example 2" shows how a variable can be declared with a type and a value.
 
 
 *Implicit Type Declaration.* In addition to explicitly declaring types, Swift offers type inference also known as implicit type declaration. If a value is assigned to a variable or constant at the time it is declared, then the compiler can infer the type. Note how the example listed below does not need to explicitly declare a type.
*/
  var drought = "a shortage of water resulting from abnormally low rainfall"

/*:
 In the example above, the compiler automatically declares the variable `drought` as type `String`. Type inference allows us to keep a cleaner and more readable source code by decreasing the need repeatedly write type declarations.
*/

 
/*:
 ![Caution icon](caution_sm.png)
 *Maintaining Readability.* While type inference may allow us to write less code, it is important to keep in mind that code readability is an asset to our source code. If we assign the value of a variable to the result of a function call, then we may have a hard time remembering the return type. In scenarios such as these. Let's go ahead and explicitly state the type.
*/
/*
 Declare a function called 'findDrought' that will return the year and month a new drought began in California. The function should return a number of type 'Double'.
*/

func findDroughtDate() -> Double {
    let year = 2013.0
    let month = 0.01
    return month + year
}

/*:
 In the developer community, dates are often returned from functions as  `Integers`. After we have written a few hundred lines of source code, we may forget that `findDroughtDate` returns a `Double`. Maintain readability by explicitly declaring the type when the variable is declared.
*/
let caDrought: Double = findDroughtDate()

/*:
 ![Experiment icon](experiment_sm.png)
 
 *Type Inference System*. What type does the compiler infer when we create and constant and store the result of multiplying 5 times 10.3?
*/
