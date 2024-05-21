//
//  MapView.swift
//  ListUI
//
//  Created by satvinder on 21/05/24.
//

import SwiftUI
import MapKit
struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        Map.init(coordinateRegion:$region)
            .frame(width: 400, height: 300)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
     
    }
}
