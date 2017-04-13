# TestAnimation

*What was the most difficult part of the challenge?

Finding the right way to implement the animation to be the same as in the .mov file


*Estimate your percentage of completion and how much time you would need to finish

i'd say 60% because i got the logic of shrinking done. I got half of the animation working (the shrinking part)
But i went in the wrong direction for the view construction. I made a view (the header) and a tableView and i play with the constraints in the viewDidScroll to shrinking and move the views but i noticed that when the header is shrinking the tableview is not scrolling so there is something i forgot
And also the expanding animation done when the tableview bounce is not working for me because the viewDidScroll is called with an offset of 0 as soon as i touch the tableView.frame...so it reset the animation and nothing happen during the "bounces"
I think i still have 1 or 2 hours of work to find the good way to integrate the animation:
- i tried with 1 view and 1 tableView and i play with the constraints in the viewDidScroll
- i thought about doing it with a pangesture in the global view but didnt try it
- i thought also that the "header" can be a section header and resize the section header in the viewDidScroll
