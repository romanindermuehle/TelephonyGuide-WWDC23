//
//  SwiftUIView.swift
//  
//
//  Created by Roman Indermühle on 13.04.23.
//

import SwiftUI

struct TestYourKnowledge1: View {
    @State var selectedAnswer = 1
    @State var counter: Int = 0
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Test your knowledge")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom)
            Text("In each lesson you have the opportunity to test your knowledge here.")
                .font(.body)
                .padding(.bottom)
            HStack {
                if (selectedAnswer == 2) {
                    // If correct green checkmark
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
                Text("Select the correct emoji").font(.body)
                Picker("Answer", selection: $selectedAnswer) {
                    Text("😣").tag(0)
                    Text("😐").tag(1)
                    Text("🥳").tag(2)
                }
            }
        }
    }
}

struct TestYourKnowledge1_Previews: PreviewProvider {
    static var previews: some View {
        TestYourKnowledge1()
    }
}
