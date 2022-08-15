//
//  ComplicationView.swift
//  XCANews
//
//  Created by Daesy Vences on 8/14/22.
//

import SwiftUI
import ClockKit

struct ComplicationView: View {
    
    var text = ""
    
    var body: some View {
        Text(text)
        .font(.caption2)
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct ComplicationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CLKComplicationTemplateGraphicRectangularLargeView(
                headerTextProvider: CLKTextProvider(format: "XCANews", []),
                content: ComplicationView(text: "Apple announced watchOS 8 at WWDC 2021")
            ).previewContext()
        }
    }
}
