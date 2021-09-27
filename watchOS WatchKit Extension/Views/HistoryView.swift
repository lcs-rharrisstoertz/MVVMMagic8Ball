//
//  HistoryView.swift
//  MVVMMagic8Ball
//
//  Created by Harris-Stoertz, Rowan on 2021-09-27.
//

import SwiftUI

struct HistoryView: View {
    // Make an instance of the view model to store questions and advice
    @ObservedObject var advisor: AdviceViewModel()
    
    // Stores the current question being asked
    @State private var input = ""
    
    // Stores the response to the given question
    @State private var output = ""
    
    var body: some View {
        // Show the list of questions and responses
        List(advisor.sessions.reversed()) { session in
            VStack(alignment: .leading) {
                Text(session.question)
                    .bold()
                Text(session.response)
            }
        }
        .padding()
        .navigationTitle("History")
    }
    
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
