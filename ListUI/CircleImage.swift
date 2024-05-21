//
//  CircleImage.swift
//  ListUI
//
//  Created by satvinder on 21/05/24.
//

import SwiftUI

struct CircleImage: View {
    var img  : Image
    var body: some View {
        img
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(img: Image("charleyrivers"))
            
    }
}
