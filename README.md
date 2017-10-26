# AC-iOS-Unit2MidUnit
Unit 2 Mid-Unit Assessment

# These violent delights have violent ends



### Exercise Polonius Monologue

## Level 1
There are two parts for this assignment. Your first task is to take the provided dataset, ```textArr```, and display the next line in the monologue when the **Next Line** button is pressed. Display the text in a textview. 
## Level 2 
Once the monologue is complete, start the speech over from the beginning. Match the UI Design on the gif. 


![](https://media.giphy.com/media/3o7aCXpsXEhOhwQan6/giphy.gif)

### Data

```swift

let textArr = ["My liege, and madam, to expostulate",
                 "What majesty should be, what duty is,",
                 "What day is day, night night, and time is time,",
                 "Were nothing but to waste night, day, and time;",
                 "Therefore, since brevity is the soul of wit,",
                 "And tediousness the limbs and outward flourishes,",
                 "I will be brief. Your noble son is mad."
                ]


```


### Exercise Romeo and Juliet: Scene IV

## Level 1
Give the textfield the default text "Enter Romeo, Benvolio or Mercutio"

## Level 2 
Display the **Invalid Name** label when the user types in a name other than Romeo, Benvolio or Mercutio in the textfield. Hide the **Invalid Name** label when the correct names are typed in. Keep in mind the user might type the names in uppercase, lowercase or LiKe ThiS. 

## Level 3 
When the user types in Romeo, Benvolio or Mercutio display all the corresponding text for that character in a textview. Match the UI Design on the gif. 

![](https://media.giphy.com/media/3o7aCVyCpcpLIQybZu/giphy.gif)

### Data

```swift
let scene4Array = [
        """
        ROMEO:
        What, shall this speech be spoke for our excuse?
        Or shall we on without a apology?
        """,

        """
        BENVOLIO:
        The date is out of such prolixity:
        We'll have no Cupid hoodwink'd with a scarf,
        Bearing a Tartar's painted bow of lath,
        Scaring the ladies like a crow-keeper;
        Nor no without-book prologue, faintly spoke
        After the prompter, for our entrance:
        But let them measure us by what they will;
        We'll measure them a measure, and be gone.
        """,

        """
        ROMEO:
        Give me a torch: I am not for this ambling;
        Being but heavy, I will bear the light.
        """,

        """
        MERCUTIO:
        Nay, gentle Romeo, we must have you dance.
        """,

        """
        ROMEO:
        Not I, believe me: you have dancing shoes
        With nimble soles: I have a soul of lead
        So stakes me to the ground I cannot move.
        """,

        """
        MERCUTIO:
        You are a lover; borrow Cupid's wings,
        And soar with them above a common bound.
        """,

        """
        ROMEO:
        I am too sore enpierced with his shaft
        To soar with his light feathers, and so bound,
        I cannot bound a pitch above dull woe:
        Under love's heavy burden do I sink.
        """,

        """
        MERCUTIO:
        And, to sink in it, should you burden love;
        Too great oppression for a tender thing.
        """,
        """
        ROMEO:
        Is love a tender thing? it is too rough,
        Too rude, too boisterous, and it pricks like thorn.
        """
        ]

```
