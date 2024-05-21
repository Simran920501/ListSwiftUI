//
//  LandmarkDetail.swift
//  ListUI
//
//  Created by satvinder on 21/05/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage(img: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)


            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)


                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()


            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
