/* 
Writer's notes:

 The layout of the documentation will consist of three different sections marked by meaningful icons. A small icon will sit just to the left of the first paragraph. (Due to markup restrictions, images below are not placed in their ideal location.) The three different sections include, 1) Build; 2) Caution; and 3) Experiment.
 
    Sections one and three currently exist within the Swift documentation; however, only three ("Experimentation") is identified. Section two is new and provides a specific space for advisories to the learning developer.

 
    Sections will be easily understood through the commonly used symbols implemented. To ensure clarity, there will be a key at the beginning of the documentation that briefly describes the meaning behind each icon.
 
    Many people learn better through the use of images. The icons will allow us to eliminate pieces of text in the current documentation that can be conveyed through an image. The seemingly tactile "build" and "experiment" icons will allow the user to see oneself as a true engineer aka "Yay, I love learning Swift!"
 


  Examples given throughout the documentation reference a topic not often covered in the developer community - hydrology. By providing examples on a variety of topics, people from diverse backgrounds may have an easier time relating to the material.
*/

/*:
 ![Build icon](build_sm.png)
 Similar to Objective-C, Swift requires each type to be declared. By explicitly declaring the type our source code is less likely to crash  and easier to debug during runtime.
 
 For example, the compiler will issue an alert message if we try to store a `String` in previously declared type `Double`. By assigning the type ahead of time, the compiler is able to allocate  required space in memory and prepare the machine readable code for runtime.

 *Explicit Type Declaration.* In Objective-C type must be explicitly written and we can do the same in Swift.
*/
 //Example 1:
 var waterfall: String

 // Example 2:
 var groundWater: String = "is sourced through springs and wells"

/*:
 In "Example 1", listed above, the explicit type declaration will allow the compiler to allocate sufficient space for a variable that will eventually be of type String. "Example 2", shows how a variable can be declared with a type and a value.
 
 
 *Implicit Type Declaration.* In addition to explicitly declaring types, Swift offers type inference also known as implicit type declaration. If a value is assigned to a variable or constant at the time it is declared, then the compiler can infer the type. Note how "Example 3", listed below, does not explicitly declare a type.
*/
 // Example 3:
  var drought = "a shortage of water resulting from abnormally low rainfall"

/*:
 In the example above, the compiler automatically declares the variable `drought` as type `String`. Type inference allows us to keep a cleaner and more readable source code by decreasing the need repeatedly write type declarations.
*/

 
/*:
 ![Caution icon](caution_sm.png)
 *Keep code readable.* Type inference allows us to write less code; however, keep in mind that readable code is an asset to our source code. If we assign the value of variable to the result of a function being called, we may have a hard time remembering the type of this variable. In scenarios such as these, let's go ahead and explicitly state the type.

 Let's say we would like store the year and month a new drought began in California.

 To keep our numbers in chronological order, we might the store start date as 201301 or Double 2013.01, both of which could be interpreted to mean the 1st month in 2013. We can see how these two numbers may have equivalent meaning; however, one is an `Integer` while the other is a `Double` and thus they are different types.
*/
func findDroughtDate() -> Double {
    let year = 2013.0
    let month = 0.01
    return month + year
}

/*:
 Further down in our source code, when we are ready to store the returned value or implement a variable which accesses that value, we may forget which type the function returns or the variable holds. To increase readability, let's explicitly declare the type when the variable is created.
*/
let caDrought: Double = findDroughtDate()

/*:
 ![Experiment icon](experiment_sm.png)
 
 What type does the compiler infer when we store the result of 5 times 10.3 in a constant?
*/
