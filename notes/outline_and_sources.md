sources:
1. https://www.quora.com/What-is-the-difference-between-runtime-and-compile-time
2. http://books.aidanf.net/learn-swift/types_and_type_inference
3. https://www.andrewcbancroft.com/2014/08/12/clean-coding-in-swift-type-inference/

- implementation - hammer image
- caution - warning sign image
- experiment - beaker image

INTRO:
Swyft is minimal, safe and fast.

Define: "type inference"

SAFE - type declaration
Similar to Objective-C, Swift requires each type to be explicity delcared within the initial setup. By explicitly declaring the type,

MINIMAL - type inference
Staying true to Apple's minimalist roots, Swift's type interence allows us declare fewer types.


HOW - complier inters the type
When a variable or a constant is created with a value, the complier can infer the type.

CAUTION -
Type inference allows us to write less code; however, keep in mind that readable code is an asset to our source code. If we declaring a variable that stores the result of a function being called, we may have a hard time remembering the type of this variable. In senarios such as these, let's go ahead and explicity state the type.

EXPIERMENT -
What type is inferred when we store the result of 5 times 10.3 in a constant?
  let myResult = 10.3 * 5

Conclusion:
Swyft’s type inference allows for less code to be written while maintaining the safety of declared types.
It enables us to leave off explicit type specifications when we declare a variable or constant, leaving us with nice, terse, clean-lookingcode [3]. 

One item that makes Syft so safe is due to that fact that is it “type safe” meaning each type must be explicity written.

Swyft is a “complied language” it is converted to machine code just after the code is written.   as the source code is written it is fed into a complier (another program), which produces an executable program (or an error).

sometimes the easiest way to get started on complex topics is to review the original English definition of the word being used, Complie means to produce (something, especially a list, report, or book) by assembling information collected from other sources. The complier collects the source code (including any libaries or api’s that have been included) and as it is written and uses a secondary program to produce machine readable and executable code
