//
//  main.swift
//  Magic8Ball
//
//  Created by Russell Gordon on 2021-09-16.
//

import Foundation

//make an instance of the view model to store questions and advice
var advisor = AdviceViewModel()
var choice = "1"

// Program name
print("MAGIC 8 BALL")
print("============")
print("""
NOTE: Questions should be phrased such
      that they can be answered with a
      yes or no response.

""")

while true {
    
    switch choice {
    case "1":
        
        // Ask for user's question
        print("What is your question? ")
        // Get input as a non-optional String
        let input = readLine()!
        
        // Print out their question
        print("")
        print("You said: \(input)")
        print("")
        
        // Provide the advice by making an instance of the Magic8Ball type and then getting a response
        print(advisor.provideResponseFor(givenQuery: input))
        
    case "2":
        //Iterate over all past sessions
        for priorSession in advisor.sessions {
            print("""
    You asked: \(priorSession.question)
    The Magic 8 Ball answered: \(priorSession.response)
    
    """)
        }
    default:
        print ("Please enter a valid choice")
    }
    
    print ("""
What would you like to do next?
1: Ask another question
2: See a list of previous questions and answers asked
Please enter a number to make your selection.
""")
    choice = readLine()!
    
    
}

