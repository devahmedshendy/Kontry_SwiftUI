//
//  DetailView.swift
//  Kontry
//
//  Created by  Ahmed Shendy on 7/8/21.
//

import SwiftUI

struct DetailView: View {
    //MARK: - PROPERTIES
    
    let icon: String
    let title: String
    let value: String
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 16, height: 16, alignment: .center)
            
            Text(title.uppercased())
                .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(.accentColor)
                .frame(width: 110, alignment: .leading)
            
            Text(value)
                .font(.system(size: 16))
                .fontWeight(.regular)
                .foregroundColor(.accentColor)
            
            Spacer()
            
        }
        .padding(.vertical, 10)
        .padding(.leading, 15)
        .background(
            Color("detail-backgound-color")
                .cornerRadius(10)
        )
        .padding(.horizontal, 20)
        .frame(maxWidth: 480)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(icon: "capital", title: "capital", value: "Cairo")
            .previewLayout(.sizeThatFits)
            .padding(.vertical)
    }
}
