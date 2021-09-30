//
//  HistoryView.swift
//  MVVMMagic8Ball
//
//  Created by Harris-Stoertz, Rowan on 2021-09-29.
//

import SwiftUI

struct HistoryView: View {
    
    @ObservedObject var advisor = AdviceViewModel()
    @State private var input = ""
    @State private var output = ""
    
    var body: some View {
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

//struct HistoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        HistoryView(advisor: advisor)
//    }
//}
