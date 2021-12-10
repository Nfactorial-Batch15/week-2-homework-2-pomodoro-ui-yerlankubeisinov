//
//  first.swift
//  Pomodoro
//
//  Created by Yerlan Kubeisinov on 09.12.2021.
//

import SwiftUI

struct firstTab: View {
    var body: some View {
        ZStack {
            background
            VStack {
                tag
                    .padding(.bottom, 52)
                ProgressTrack()
                    .padding(.bottom, 60)
                HStack {
                    playIcon
                        .padding(.trailing, 80)
                    stopIcon
                }
            Spacer()
                    .frame(height: 80)
            }
        }
    }
    
    var background: some View {
        ZStack {
            Color(red: 0.2, green: 0.2, blue: 0.2).ignoresSafeArea()
            Image("BG")
        }
        
    }
    
    var playIcon: some View {
        Image(systemName: "play.circle.fill")
            .resizable()
            .frame(width: 56, height: 56)
            .foregroundColor(.white)
            .opacity(0.5)
    }
    
    var stopIcon: some View {
        Image(systemName: "stop.circle.fill")
            .resizable()
            .frame(width: 56, height: 56)
            .foregroundColor(.white)
            .opacity(0.5)
    }
    
    var tag: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24).fill(Color.white).opacity(0.3)
                .frame(width: 170, height: 36)
                
            HStack {
                Image(systemName: "pencil")
                    .foregroundColor(.white)
                    
                
                Text("Focus category")
                    .font(Font.custom("SF-Pro-Display-Regular", size: 16))
                    .foregroundColor(.white)
            }
        }
        
    }
}

struct ProgressTrack: View {
    var body: some View {
        Circle()
            .stroke(Color.white, lineWidth: 6)
            .opacity(0.3)
            .frame(width: 250, height: 250)
            .overlay(
                Circle()
                    .trim(from: 0.0, to: 0.2)
                    .stroke(Color.white, lineWidth: 6)
                    .rotationEffect(.degrees(270))
            )
    }
}

struct firstTab_Previews: PreviewProvider {
    static var previews: some View {
        firstTab()
    }
}
