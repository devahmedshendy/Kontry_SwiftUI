//
//  FlagView.swift
//  Kontry
//
//  Created by  Ahmed Shendy on 7/8/21.
//

import SwiftUI

struct FlagView: View {
    //MARK: - PROPERTIES
    
    let flagName: String
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Spacer()
            
            VStack {
                Spacer()
                
                Image(flagName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 15))
                    .padding(.trailing, 25)
                    .padding(.bottom, 35)
                    .shadow(color: Color("background-color"), radius: 10, x: 2, y: 2)
            } // VStack
        } // HStack
    }
}
struct FlagView_Previews: PreviewProvider {
    static var previews: some View {
        FlagView(flagName: "egy")
            .previewLayout(.sizeThatFits)
    }
}
