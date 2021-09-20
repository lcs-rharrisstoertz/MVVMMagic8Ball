//
//  Session.swift
//  MVVMMagic8Ball
//
//  Created by Harris-Stoertz, Rowan on 2021-09-17.
//

import Foundation

struct Session: Identifiable {
    
    let id = UUID()
    
    // Question that the user asks must be set to start an advice session
    let question: String
    
    //response will be provided later
    var response: String = ""
    
}
