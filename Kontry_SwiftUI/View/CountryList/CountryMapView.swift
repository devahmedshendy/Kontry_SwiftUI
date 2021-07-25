//
//  CountryMapView.swift
//  Kontry
//
//  Created by  Ahmed Shendy on 7/3/21.
//

import SwiftUI
import MapKit

struct CountryMapView: UIViewRepresentable {
    
    //MARK: - PROPERTIES
    
    let region: MKCoordinateRegion
    let capitalAnnotation: Capital
    
    //MARK: - UIViewRepresentable PROTOCOL
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.setRegion(region, animated: false)
        mapView.addAnnotation(capitalAnnotation)
        mapView.delegate = context.coordinator
        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
    
    func makeCoordinator() -> MapCoordinator {
        MapCoordinator()
    }
    
    //MARK: - Coordinator Class
    
    final class MapCoordinator: NSObject, MKMapViewDelegate {
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            let identifier = CAPITAL_ANNOTATION_IDENTIFIER
            
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView
            
            if annotationView == nil {
                annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView?.canShowCallout = true
                annotationView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
                
            } else {
                annotationView?.annotation = annotation
            }
            
            return annotationView
        }
    }
    
//    var body: some View {
        
//        Map(coordinateRegion: $region, annotationItems: [capital]) { item in
//            MapAnnotation(coordinate: item.coordinate) {
//                VStack(alignment: .leading, spacing: 5) {
//                    HStack {
//                        Text("Capital City: ")
//                            .font(.subheadline)
//                            .fontWeight(.medium)
//                            .foregroundColor(Color("background-color"))
//
//                        Text(capital.name)
//                            .font(.subheadline)
//                            .foregroundColor(Color("background-color"))
//
//                    }
//                    .padding(.top, 10)
//                    .padding(.horizontal)
//
//                    HStack {
//                        Text("Population: ")
//                            .font(.subheadline)
//                            .fontWeight(.medium)
//                            .foregroundColor(Color("background-color"))
//
//                        Text(capital.populationAsString)
//                            .font(.subheadline)
//                            .foregroundColor(Color("background-color"))
//                    }
//                    .padding(.bottom, 10)
//                    .padding(.horizontal)
//
//
//                } // VStack
//                .background(
//                    RoundedRectangle(cornerRadius: 10)
//                        .fill(Color.accentColor)
//                        .shadow(color: Color.black.opacity(05), radius: 10, x: 0.0, y: 0.0)
//                )
//                .offset(y: -60.0)
//            }
//        }
//        .onAppear(perform: {
//            region = MKCoordinateRegion(
//                center: coordinate,
//                span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25)
//            )
//        })
        
        
//        Map(coordinateRegion: $region)
//            .onAppear(perform: {
//                region = MKCoordinateRegion(
//                    center: coordinate,
//                    span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25)
//                )
//            })
//    }
}

//MARK: - PREVIEW

//struct CountryMapView_Previews: PreviewProvider {
//    static var previews: some View {
//        let country = countries[4]
//
//        CountryMapView(capital: country.capital, coordinate: country.coordinate)
//            .previewLayout(.sizeThatFits)
//    }
//}
