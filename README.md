# Cucumber hello world : Get in my belly!
==========================
Primary exercise to know BDD and Cucumber, the objective is to know the way in which a Cucumber project is structured and learn how to write a "features" file. The project has been created in Maven and Eclipse configured with Cucumber plugins.

### The problem

"If I eat more than 10 cucumbers and wait more than 2 hour then my belly should growl"

### The solution

| time >= 2| Belly > 10 | Result |
| --- | --- | --- |
| 12  | 10  | false |
| 2   | 9   | false |
| 2 | 11 | true |
| 1 | 10 | false |
| 1 | 11 | false |
| 3 | 10 | false |
| 3 | 11 | true |
| 1 | 9 | ... |
