//
//  TitleView.swift
//  Kontry
//
//  Created by  Ahmed Shendy on 7/8/21.
//

import SwiftUI

struct TitleView: View {
    //MARK: - STATES
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - PROPERTIES
    
    let countryName: String
    
    //MARK: - BODY
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color("background-color"))
                    .frame(height: 50)
                    .padding(.horizontal, 20)
                

                Text(countryName)
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal, 70)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity)
                
                HStack(alignment: .center, spacing: 10) {
                    Image(systemName: "chevron.backward.circle.fill")
                        .font(.system(size: 20))
                        .imageScale(.large)
                        .padding(.leading, 35)
                        .foregroundColor(.accentColor)
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    
                    
                    Spacer()
                }
                
                
            }
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            Spacer()
        } // VStack
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(countryName: "Egypt")
            .previewLayout(.sizeThatFits)
    }
}
