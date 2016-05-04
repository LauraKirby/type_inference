## Prompt:
 Write a short document that explains Swift’s type-inference system and why developers should care.

## Writer's Note to Brian and Alex:

 In response to the above-listed prompt, I believe good technical writing demonstrates a deep technical understanding and the ability to reach a diverse audience. Researching various themes for the sample code may engage a wider and more diverse audience [1]. Separating the content into conceptually related sections may help a learner's brain digest the new information [2]. The use of images may help visual learners understand the material [3]. My writing sample aims to document a technical topic while promot diversity inclusion.

 What do teenage girls often think about? According to Heidi Olinger, it's horses. Examples given throughout my writing sample reference a topic that is likely to be relatable by teenage girls - "horse". The concepts mentioned in connection with horses are quite simple, this was done to avoid confusing people who are not horse enthusiats. Additionally, keeping topics simple may help keep the material understandable by non-native English speakers. Providing examples on a variety of general topics, may help people from diverse backgrounds relate to the material.

 In the article, "Chunking Information for Instruction Design", Connie Malamed states that "Content that is conceptually related is meaningful, making it easier to understand." My writing sample has been placed into three sections. The first section informs the audience of the most basic way to understand and implement the concept. The second section goes into more detail and cautions the audience of complex details. The third section encourages the audience to apply the newly learned concepts on their own. Breaking up the material into three sections may help people better digest the new material.

 There are 7 different learning styles [3]. Including diverse forms of media may help engage and teach a wider audience. Icons are implemented to help visual learners navigate the material. To ensure clarity of each icon, there will be a key at the beginning of the documentation (key not yet created). Providing various forms of media may help people with various learning styles understand the material.

 Through researching ways to engage and enhance the learning experience, my writing sample aims to document a technical topic while promoting diversity inclusion.


## Documentation: Swift's Type Inference
 ![Build icon](./images/hammer.png) *Introduction.* Swift is a type safe language and requires every entity to have a type. Similarly to other type safe languages such as Objective-C, Java or C#, annotating the type is a common practice. In contrast, Swift's type inference system allows developers to write cleaner and more concise source code. When the compiler is not able to infer the type, we will need to annotate the type. Using sample code to experiment in a Playground can demonstrate the complex cases that Swift's type inference system is prepared to handle.

 *Type Safe.* Swift requires each entity to have a type at compile time. If an entity is created and a type is not assigned, the compiler will crash and we will not be able to run our code. This requirement will prevent conflicting type crashes during run time.

 *Type Annotation.* In Objective-C, a type must be explicitly annotated and we can do the same in Swift.

 Use type annotation to declare a variable of type `String`.

 ```swift
 var groundWater: String = "sourced through springs and wells"
 ```

 *Type Inference.* In addition to type annotation, Swift offers type inference. If a value is assigned to an entity at the time it is declared, then the compiler can often times infer the type. Note how the example listed below does not need to explicitly annotate a type.

 Use type inference to declare a variable of type `String`.

 ```swift
 var drought = "a shortage of water resulting from abnormally low rainfall"
 ```

 In the example above, a variable is declared and the compiler infers the type as `String`. By decreasing the need to annotate the type, our source code is cleaner.

 ![Caution icon](./images/caution_sm.png)
 Annotate the type when using the `as` operator to type cast, type coercion, when the compiler isn't able to infer the type on its own.

 ![Experiment icon](./images/experiment_sm.png) *Type Inference System*. What type does the compiler infer when we create and constant and store the result of multiplying 5 times 10.3?

 Tip: Press `option + click` to view the inferred type.

 22\. Odd ending. No recap. Nothing really to experiment with.

 23\. Additional notes from review:
    + Make writing sample more substantive
    + More complicated examples
    + Add example where type inference works in opposite direction
    + Protocols
    + Generics
    + Due on Thursday, 5/5/16

Sources:
1. "To Help Students Learn, Appeal to What They Value" by Heidi A. Olinger
- http://www.edutopia.org/blog/appeal-to-what-students-value-heidi-olinger

2. "Chunking Information for Instructional Design"
- http://theelearningcoach.com/elearning_design/chunking-information/

3. "The 7 Styles of Learning: Which works for you?"
- http://www.edudemic.com/styles-of-learning/