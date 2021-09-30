//
//  ContentView.swift
//  iOS
//
//  Created by Harris-Stoertz, Rowan on 2021-09-20.
//

import SwiftUI

struct ContentView: View {
    
    // Make an instance of the view model to store questions and advice
    @StateObject var advisor = AdviceViewModel()

    // Stores the current question being asked
    @State var input = ""
    
    // Stores the response to the given question
    @State var output = ""
    
    var body: some View {
        VStack {
            
            // Advice given
            HStack {
                VStack(alignment: .leading) {
                    Text("**NOTE:**")
                    Text("Questions should be phrased in such that they can be answered with a yes or no response.")
                }
                Spacer()
            }

            // Ask a question
            TextField("Question",
                      text: $input,
                      prompt: Text("What do you need advice on?"))
            
            // Get advice
            Button(action: {
                print("Shake button was pressed")
                output = advisor.provideResponseFor(givenQuery: input)
            }, label: {
                Text("Shake")
            })
                .padding()
                // Return will trigger this button
                .keyboardShortcut(.defaultAction)
                // Only enable the button when a question is asked
                .disabled(!input.contains("?"))
            
            // Advice given
            Text(output)
        }
        .padding()
        .navigationTitle("Magic 8 Ball")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
