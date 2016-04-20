
//: ![Build icon](build_sm.png)
// INTRO: Swyft is safe, clean and fast.

/*:
WHY SHOULD I CARE - bc it's safe & clean
Similar to Objective-C, Swift requires each type to be declared. By explicitly declaring the type our codebase is less prone to crashing further on in the development process because we (and the compiler) know what type to expect. For example, the complier will crash if we try to store a `String` in previously declared type `Double`. By assigning the type ahead of time, the complier is able to allocate

HOW - complier infers the type
In contrast to Objective-C, type can be inferred. When a variable or a constant is created with a value, the complier can infer the type. Swift's type inference allows us to keep a cleaner codebase by decreasing the need to explicitly declare types.
 
EXAMPLE - type inference
 The compiler will automatically declare the variable `drought` as type `String`.
 */

 var drought = "a prolonged period of abnormally low rainfall; a shortage of water resulting from this"
 
 /*:
CAUTION - keep code readable
![Caution icon](caution_sm.png)Type inference allows us to write less code; however, keep in mind that readable code is an asset to our source code. If we assign the value of variable to the result of a function being called, we may have a hard time remembering the type of this variable. In scenarios such as these, let's go ahead and explicitly state the type.

EXPIERMENT - show how delcaring a type can be helpful.
 ![Expierment icon](expierment_sm.png)
 Let's say we would like store the year and month a new drought began in California.

We might store the data as 201301 meaning the 1st month in 2013 or we might store the data as 2013.01. Both have equivalent meaning but are not the same types. Further down in our codebase we may forget which type we chose. To make our code more readable, let's explicitly declare the type.

*/

func findDroughtDate() -> Double {
    let year = 2013.0
    let month = 0.01
    return month + year
}

let caDrought: Double = findDroughtDate()

