//
//  CountryListItem.swift
//  Kontry
//
//  Created by  Ahmed Shendy on 6/24/21.
//

import SwiftUI

struct CountryListItem: View {
    
    let country: Country
    
    var body: some View {
        HStack {
            Text(country.name)
                .font(.system(size: 15))
                .padding(15)
                .foregroundColor(.accentColor)
            Spacer()
        }
        .background(
            RoundedRectangle(cornerRadius: 10, style: .circular)
                .stroke(Color("list-border-color"))
        )
        .frame(height: 35)
        .padding(.vertical, 15)
    }
}

struct CountriesListtem_Previews: PreviewProvider {
    static let countries: [Country] = Bundle.main.decode("countries.json")
    
    static var previews: some View {
        CountryListItem(country: countries[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
