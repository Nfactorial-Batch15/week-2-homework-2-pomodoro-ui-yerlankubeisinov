//
//  focusPopUp.swift
//  Pomodoro
//
//  Created by Yerlan Kubeisinov on 09.12.2021.
//

import SwiftUI

struct focusPopUp: View {
    var body: some View {
        ZStack {
            firstTab()
            
            bottomSheet
            
        }
        
    }
    
    var bottomSheet: some View {
        VStack {
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(width: 360, height: 340)
                
                
                VStack {
                    Text("Focus category")
                        .bold()
                        .padding(.bottom)
                    HStack {
                        CustomButton(text: "Work")
                        CustomButton(text: "Study")
                    }
    
                    HStack {
                        CustomButton(text: "Workout")
                        CustomButton(text: "Reading")
                    }
                    HStack {
                        CustomButton(text: "Meditation")
                        CustomButton(text: "Others")
                    }
                    Spacer()
                        .frame(height: 80)
                }
                
            }
        }
        
        
    }
}



struct CustomButton: View {
    let text: String
    var action: () -> Void = {}
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color(red: 244/255, green: 244/255, blue: 244/255))
                    .frame(width: 160, height: 60)
                Text(text)
                    .bold()
                    .foregroundColor(.black)
            }
        }
    }
}

struct focusPopUp_Previews: PreviewProvider {
    static var previews: some View {
        focusPopUp()
    }
}
