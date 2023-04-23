//
//  InformationDetailView.swift
//  Telephony
//
//  Created by Roman Indermühle on 09.04.23.
//

import SwiftUI

struct InformationDetailView: View {
    var title: String = "title"
    var subTitle: String = "subtitle"
    var imageName: String = "car"
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: imageName)
                .font(.system(size: 40))
                .scaledToFit()
                .foregroundColor(.accentColor)
                .padding()
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                
                Text(subTitle)
                    .font(.body)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}
struct InformationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        InformationDetailView()
    }
}
