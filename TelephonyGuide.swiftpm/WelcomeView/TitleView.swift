//
//  SwiftUIView.swift
//  
//
//  Created by Roman Indermühle on 09.04.23.
//

import SwiftUI

struct TitleView: View {
    @State private var isAnimating = false
    @State var value: Double = 0
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            if #available(iOS 16.0, *) {
                Image(systemName: "phone.and.waveform.fill", variableValue: value)
                    .font(.system(size: 75))
                    .foregroundColor(.primary)
                    .foregroundColor(Color(hue: value, saturation: 0.0, brightness: 0.0))
                    .onReceive(timer) { _ in
                        if value < 1.0 {
                            value += 0.25
                        } else {
                            value = 0.0
                        }
                    }
                Text("Welcome to")
                    .font(.system(size: 36, design: .rounded))
                    .fontWeight(.black)
                Text("Telephony Guide")
                    .font(.system(size: 36, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.accentColor)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
