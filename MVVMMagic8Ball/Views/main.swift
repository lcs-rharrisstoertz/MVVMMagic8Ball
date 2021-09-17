//
//  main.swift
//  Magic8Ball
//
//  Created by Russell Gordon on 2021-09-16.
//

import Foundation

//make an instance of the view model to store questions and advice
var advisor = AdviceViewModel()

// Program name
print("MAGIC 8 BALL")
print("============")

// Ask for user's question
print("""
NOTE: Questions should be phrased such
      that they can be answered with a
      yes or no response.

""")
print("What is your question? ")
// Get input as a non-optional String
let input = readLine()!

// Print out their question
print("")
print("You said: \(input)")
print("")

// Provide the advice by making an instance of the Magic8Ball type and then getting a response
print(advisor.provideResponseFor(givenQuery: input))

//Iterate over all past sessions
for priorSession in advisor.sessions {
    print(priorSession.question)
    print(priorSession.response)
}
//do you want to see a list of prior sessions and answers have them choose 1 or 2
