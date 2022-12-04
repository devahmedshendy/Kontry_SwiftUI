//
//  WatermarkView.swift
//  Kontry
//
//  Created by  Ahmed Shendy on 6/24/21.
//

import SwiftUI

struct WatermarkView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .opacity(0.05)
    }
}

struct WatermarkView_Previews: PreviewProvider {
    static var previews: some View {
        WatermarkView()
    }
}
