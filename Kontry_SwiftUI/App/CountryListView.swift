//
//  CountryListView.swift
//  Kontry_SwiftUI
//
//  Created by  Ahmed Shendy on 7/25/21.
//

import SwiftUI

struct CountryListView: View {
    //MARK: - STATES
    
    @State private var showCountryDetailView: Bool = false
    
    //MARK: - PROPERTIES
    
    let countries: [Country]
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("background-color")
                    .edgesIgnoringSafeArea(.all)
                
                WatermarkView()
                
                List {
                    ForEach(countries) { country in
                        ZStack {
                            NavigationLink(destination: CountryDetailView(country: country)) {}
                                .opacity(0)
                            
                            CountryListItem(country: country)
                        }
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .listRowBackground(Color.clear)
                            
                    }
                } // List
                .navigationBarTitle("Countries")
                .onAppear {
                    clearListStyle()
                }
            } // ZStack
        } // NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CountryListView(countries: countries)
        }
    }
}
