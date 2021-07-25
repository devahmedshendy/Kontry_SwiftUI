//
//  CountryDetailView.swift
//  Kontry
//
//  Created by  Ahmed Shendy on 7/3/21.
//

import SwiftUI

struct CountryDetailView: View {
    //MARK: - PROPERTIES
    
    let country: Country
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            Color("background-color")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    // MapView
                    CountryMapView(region: country.mapRegion, capitalAnnotation: country.capital)
                    
                    // TitleView
                    TitleView(countryName: country.name)
                    
                    // FlagView
                    FlagView(flagName: country.flagName)
                } // ZStack
                .frame(height: 550)
                
                VStack(alignment: .center, spacing: 15) {
                    // Capital
                    DetailView(icon: "capital", title: "capital", value: country.capital.name)
                    
                    // Region
                    DetailView(icon: "region", title: "region", value: country.region)
                    
                    // Population
                    DetailView(icon: "population", title: "population", value: String(country.population))
                    
                    // Currency
                    DetailView(icon: "currency", title: "currency", value: country.currenciesAsString)
                    
                    // Language
                    DetailView(icon: "language", title: "language", value: country.languagesAsString)
                }
                .padding(.top, 20)
                
            } // ScrollView
            .ignoresSafeArea()
            .navigationBarTitle(country.name)
            .navigationBarHidden(true)
        }
    }
}

//MARK: - PREVIEW

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(country: countries[6])
    }
}
