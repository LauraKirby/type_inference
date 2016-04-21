/* 
Creator notes:

 The layout of the documentation will consist of three different sections, 1) Build; 2) Caution; and 3) Experiment. Each section will be denoted by a small icon just to the left of the text within the first paragraph (Due to markup restrictions, images below are not placed in correct location). There will be a key at the beginning of the documentation to outline each section. The seemingly tactile "build" and "experiment" icons will allow the user to see onself as a true engineer aka "Yay, I love learning Swift!" Many people learn better when through the use of images and text, the icons will allow us to eliminate pieces of text that can be easily conveyed through an image throughout the documentation.
 
 Examples given throughout the documentation are provided on a variety of topics, which allows people from diverse backgrounds to relate to the material.
 */

//: ![Build icon](build_sm.png)
//: INTRO: Swift is safe, clean and fast.

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
 
 EXPERIMENT - show how declaring a type can be helpful.
 
 ![Experiment icon](experiment_sm.png)
 Let's say we would like store the year and month a new drought began in California.

 To keep our numbers in chronological order, we might store start date as 201301 or Double 2013.01, both of which could be interpreted to mean the 1st month in 2013. We can see how these two numbers may have equivalent meaning; however, they are different types.
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

