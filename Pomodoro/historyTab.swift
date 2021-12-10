//
//  historyTab.swift
//  Pomodoro
//
//  Created by Yerlan Kubeisinov on 09.12.2021.
//

import SwiftUI

struct historyTab: View {
    var body: some View {
        ZStack {
            background
            VStack {
                Text("History")
                    .foregroundColor(.white)
                    .bold()
                myList()
                Spacer()
                
            }
            
        }
    }
    
    var background: some View {
        Color(red: 0.2, green: 0.2, blue: 0.2).ignoresSafeArea()
    }
}

struct myList: View {
//    var text: String
    var body: some View {
    
        List {
            Section(header: Text("21.11.21").foregroundColor(.black)) {
                Text("Focus time").foregroundColor(.black)
                Text("Break time").foregroundColor(.black)
                Text("Sessions").foregroundColor(.black)
            }
            Section(header: Text("Some header").foregroundColor(.black)) {
                Text("Some text").foregroundColor(.black)
                Text("Some more text").foregroundColor(.black)
                Text("Some more text").foregroundColor(.black)
            }
            Section(header: Text("Some header").foregroundColor(.black)) {
                Text("Some text").foregroundColor(.black)
                Text("Some more text").foregroundColor(.black)
                Text("Some more text").foregroundColor(.black)
            }
        }
        
    }
}

struct historyTab_Previews: PreviewProvider {
    static var previews: some View {
        historyTab()
    }
}
