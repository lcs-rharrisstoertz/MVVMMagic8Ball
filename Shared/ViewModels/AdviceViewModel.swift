//
//  AdviceViewModel.swift
//  MVVMMagic8Ball
//
//  Created by Harris-Stoertz, Rowan on 2021-09-17.
//

import Foundation

class AdviceViewModel: ObservableObject {
    
    // History of advice sessions
    @Published var sessions: [Session] = [] //empty array to start
    
    
    //given a question, provide some advice
    func provideResponseFor(givenQuery: String) -> String {
        
        //start an advice session
        var currentSession = Session(question: givenQuery)
        
        //Use the static function right from the Magic8Ball type (no instance required)
        currentSession.response = Magic8Ball.getResponse()
        
        //save the question and the advice given to the history
        sessions.append(currentSession)
        
        //give the response back
        return currentSession.response
    }
    
}
