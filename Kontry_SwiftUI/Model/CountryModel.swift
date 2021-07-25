//
//  CountryModel.swift
//  Kontry
//
//  Created by  Ahmed Shendy on 6/24/21.
//

import Foundation
import MapKit



final class Country: Codable, Identifiable {
    
    //MARK: - TYPES
    
    struct Currency: Codable {
        let code: String
        let name: String
        let symbol: String?
    }
    
    struct Language: Codable {
        let name: String
    }
    
    //MARK: - PROPERTIES
    
    let name: String
    let capital: Capital
    let region: String
    let population: Int
    let latlng: [Double]
    let demonym: String
    let currencies: [Currency]
    let languages: [Language]
    let alpha3Code: String
    
    //MARK: - COMPUTED PROPERTIES
    
    var id: String { name }
    
    var flagName: String {
        return self.alpha3Code.lowercased()
    }
    
    var latitude: Double {
        return self.latlng[0]
    }
    
    var longitude: Double {
        return self.latlng[1]
    }
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latlng[0], longitude: latlng[1])
    }
    
    var mapRegion: MKCoordinateRegion {
        MKCoordinateRegion(
            center: self.coordinate,
            span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25)
        )
    }
    
    var populationAsString: String {
        String(self.population)
    }
    
    var currenciesAsString: String {
        var result = [String]()
        
        for currency in self.currencies {
            result.append("\(currency.code)")
        }
        
        return result.joined(separator: ", ")
    }
    
    var languagesAsString: String {
        var result = [String]()
        
        for lang in self.languages {
            result.append(lang.name)
        }
        
        return result.joined(separator: ", ")
    }
}


final class Capital: NSObject, Codable, Identifiable {
    
    //MARK: - PROPERTIES
    
    let name: String
    let population: Int
    let latlng: [Double]
    
    //MARK: - COMPUTED PROPERTIES
    
    var id: String { name }
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latlng[0], longitude: latlng[1])
    }
    
    var populationAsString: String {
        return "\(self.population)"
    }
}

extension Capital: MKAnnotation {
    var title: String? { "\(name) - The Capital" }
    var subtitle: String? { "It has \(population) population." }
}
