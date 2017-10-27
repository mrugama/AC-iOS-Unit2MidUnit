# AC-iOS-Unit2MidUnit
Unit 2 Mid-Unit Assessment


## Section Zero: Github

- Fork this repository.
- Clone it to your machine
- Complete the sections below
- Add, commit and push your changes
- Create a pull request from your fork back to the original repo here
- Paste the link to your fork into Canvas


## Section One: Polonius Monologue

- Using the provided dataset, ```textArr``` in the PoloniusMonolueModel class,  display the next line in the monologue when the **Next Line** button is pressed. 
- Once the monologue is complete, start the speech over from the beginning. 
- See the gif below: 


![](https://media.giphy.com/media/3o7aCXpsXEhOhwQan6/giphy.gif)

<details>
<summary>Data included in the provided PoloniusMonolueModel class</summary>

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
</details>

## Section Two: Romeo and Juliet: Scene IV

- Create a text field with default text "Enter Romeo, Benvolio or Mercutio"
- When the uses presses return, display **Invalid Name** if they type in any name other than "Romeo", "Benvolio" or "Mercutio".
- If the user enters in a correct name, hide the **Invalid Name** message
- Your handling should be case insensitive for names ("ROMEO", "roMEo", and "romeo" all are valid)
- When the user types in Romeo, Benvolio or Mercutio and presses return, display all the corresponding text for that character in a textview.
- When the user presses return, dismiss the keyboard.
- See the gif below (keyboard not pictured): 

![](https://media.giphy.com/media/3o7aCVyCpcpLIQybZu/giphy.gif)

<details>
<summary>Data included in the provided RomeoAndJulietModel class</summary>

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

</details>

## Section Three: Autolayout

- Add Auto Layout constraints to your view.  
- It must have a consistent UI on phones from the iPhone 4 to the iPhone 8+
- It does not need to support rotation

