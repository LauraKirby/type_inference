## Prompt:
 Write a short document that explains Swift’s type-inference system and why developers should care.

## Writer's Note to Brian and Alex:
 The writing sample below aims to reach a diverse audience through the use new topics in the sample code. Additionally, it attempts to add a layer of organization by separating over-arching concepts within the material covered. Lastly, the writing sample considers how the use of images may help various types of learners understand the material better.

 Examples given throughout the documentation reference a topic not often covered in the developer community - hydrology. The concepts mentioned in connection with hydrology are quite simple, this was done to avoid confusing people who are not hydrology experts. Additionally, keeping topics simple may help keep the material understandable by non-native English speakers. By providing examples on a variety of general topics, people from diverse backgrounds may have an easier time relating to and engaging with the material.

 In the official Swift documentation, a new language feature is presented to the audience in two sections. The first provides general information and the second offers a space for the audience to experiment. In contrast, the writing sample below presents a new language feature in three sections. The first two reshape general information by separating it into over-arching concepts of how to build with and precautions to take when implementing the newly described feature. Similar to the Swift documentation, the third section encourages the audience to apply the newly learned concepts on their own and ends the discussion.

 Research shows that people may learn better through the use various forms of media. The three sections, in the writing sample below, are marked with icons indicating build, caution and experiment. To ensure clarity of each section, there will be a key at the beginning of the documentation (key not yet created). The icons are included to help add variety to the forms of media used within.

## Documentation: Swift's Type Inference
 ![Build icon](./images/hammer.png) *Introduction.* Swift is a type safe language and requires every entity to have a type. Similarly to other type safe languages such as Objective-C, Java or C#, annotating the type is a common practice. In contrast, Swift's type inference system allows developers to write cleaner and more concise source code. When the compiler is not able to infer the type, we will need to annotate the type. Using sample code to experiment in a Playground can demonstrate the complex cases that Swift's type inference system is prepared to handle.

 *Type Declaration.* Similar to Objective-C, Swift requires each type to be declared. By declaring the types of constants and variables, our source code is less likely to crash and easier to debug during runtime.

  11\. Clarify the difference between "type declaration" and "type inference." When do you use each?

  12\. The code is "less likely" to crash in comparison to what?

  13\. Why is the code easier to debug during runtime?

 *Explicit Type Declaration.* In Objective-C type must be explicitly written and we can do the same in Swift.

  14\. Add comma after "Objective-C."

  15\. Add article before "type."

  ```swift
 //Example 1:
 var waterfall: String

 //Example 2:
 var groundWater: String = "sourced through springs and wells"
 ```

 In "Example 1", listed above, the explicit type declaration will allow the compiler to allocate sufficient space for a variable that will eventually be of type String. "Example 2" shows how a variable can be declared with a type and a value.

  16\. New topic is brought in, "compiler to allocate sufficient space". Where is this "space" being created?

  17\. When discussing allocation, initialization should be covered.

 *Implicit Type Declaration.* In addition to explicitly declaring types, Swift offers type inference also known as implicit type declaration. If a value is assigned to a variable or constant at the time it is declared, then the compiler can infer the type. Note how the example listed below does not need to explicitly declare a type.

 ```swift
 var drought = "a shortage of water resulting from abnormally low rainfall"
 ```

 In the example above, the compiler automatically declares the variable `drought` as type `String`. Type inference cleans up our source code by decreasing the need repeatedly write type declarations.

  18\. You are the one who declared the variable and the complier inferred it as type string.

 ![Caution icon](./images/caution_sm.png)
 *Maintaining Readability.* While type inference may allow us to write less code, it is important to keep in mind that code readability is an asset to our source code. If we assign the value of a variable to the result of a function call, then we may have a hard time remembering the return type.

  19\. Makes sense in dynamically typed language, not really in statically typed language.

  20\. Annotate the type: when using the “as” operator to type cast, type coercion, when the compiler isn't able to infer the type on its own.

 Declare a function called 'findDrought' that will return the year and month a new drought began in California. The function should return a number of type Double.

 ```swift
 func findDroughtDate() -> Double {
     let year = 2013.0
     let month = 0.01
     return month + year
 }
 ```

 In the developer community, dates are often returned from functions as `Integers`. After we have written a few hundred lines of source code, we may forget that `findDroughtDate` returns a `Double`. Maintain readability by explicitly declaring the type when the variable is declared.

 ```swift
 let caDrought: Double = findDroughtDate()
 ```

 ![Experiment icon](./images/experiment_sm.png) *Type Inference System*. What type does the compiler infer when we create and constant and store the result of multiplying 5 times 10.3?

  21\. How do we know that the type was inferred as a `Double` and not a `Float`?

  22\. Odd ending. No recap. Nothing really to experiment with.

  23\. Additional notes from review:
    + Make writing sample more substantive
    + More complicated examples
    + Add example where type inference works in opposite direction
    + Protocols
    + Generics
    + Due on Thursday, 5/5/16