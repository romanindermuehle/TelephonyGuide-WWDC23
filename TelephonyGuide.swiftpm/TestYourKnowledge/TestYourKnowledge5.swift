//
//  SwiftUIView.swift
//  
//
//  Created by Roman Indermühle on 16.04.23.
//

import SwiftUI

struct TestYourKnowledge5: View {
    @State var selectedAnswer1 = 0
    @State var selectedAnswer2 = 0
    @State var counter: Int = 0
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Test your knowledge")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom)
            Text("Are phone calls encrypted?")
                .font(.body)
            HStack {
                if (selectedAnswer1 == 2) {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                        .font(.system(size: 20))
                        .onAppear {
                            counter += 1
                        }
                        .confettiCannon(counter: $counter, num: 50, openingAngle: Angle(degrees: 0), closingAngle: Angle(degrees: 90), radius: 200)
                    
                } else {
                    Image(systemName: "circle.dashed")
                        .font(.system(size: 20))
                }
                Text("Select the correct answer").font(.body)
                Picker("Answer", selection: $selectedAnswer1) {
                    Text("I don't know").tag(0)
                    Text("No").tag(1)
                    Text("Yes").tag(2)
                }
            }.padding(.bottom)
            Text("The digital signal consists of 1 and 2")
            HStack {
                if (selectedAnswer2 == 1) {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                        .font(.system(size: 20))
                        .onAppear {
                            // When the green good sign appears, it sets the counter to 1 and then it rains confetti
                            counter += 1
                        }
                        .confettiCannon(counter: $counter, num: 50, openingAngle: Angle(degrees: 0), closingAngle: Angle(degrees: 90), radius: 200)
                    
                } else {
                    Image(systemName: "circle.dashed")
                        .font(.system(size: 20))
                }
                Text("Select the correct answer").font(.body)
                Picker("Answer", selection: $selectedAnswer2) {
                    Text("I don't know").tag(0)
                    Text("False").tag(1)
                    Text("True").tag(2)
                }
            }
        }
    }
    
}

struct TestYourKnowledge5_Previews: PreviewProvider {
    static var previews: some View {
        TestYourKnowledge5()
    }
}
