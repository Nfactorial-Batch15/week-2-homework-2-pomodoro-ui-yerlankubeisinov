//
//  settingsTab.swift
//  Pomodoro
//
//  Created by Yerlan Kubeisinov on 09.12.2021.
//

import SwiftUI

struct settingsTab: View {
    var body: some View {
        ZStack {
            background.ignoresSafeArea()
            VStack {
                Text("Settings")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
                    .frame(height: 50)
                
                HStack {
                    Text("Focus Time")
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Text("25:00")
                        .foregroundColor(.gray)
                        .padding()
                } .frame(height: 30)
                Rectangle()
                    .fill(.gray)
                    .frame(width: 328, height: 0.5)
                //--------------------------
                HStack {
                    Text("Break Time")
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Text("05:00")
                        .foregroundColor(.gray)
                        .padding()
                } .frame(height: 30)
                Rectangle()
                    .fill(.gray)
                    .frame(width: 328, height: 0.5)
                
                //--------------------------
                
                HStack {
                    Text("Sessions")
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Text("2")
                        .foregroundColor(.gray)
                        .padding()
                } .frame(height: 30)
                Rectangle()
                    .fill(.gray)
                    .frame(width: 328, height: 0.5)
                
                Spacer()
                
            }
        }
    }
    
    var background: some View {
        Color(red: 0.2, green: 0.2, blue: 0.2).ignoresSafeArea()
    }
}

struct settingsTab_Previews: PreviewProvider {
    static var previews: some View {
        settingsTab()
    }
}
