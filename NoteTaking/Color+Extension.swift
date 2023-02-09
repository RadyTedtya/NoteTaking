//
//  Color+Extension.swift
//  Spotify
//
//  Created by Tedtya rady on 4/1/23.
//

import Foundation
import SwiftUI

extension Color {
    static let primaryColor = Color.init(hex: 0x6273ED)
    static let primaryFontColor = Color.init(hex: 0xD8D8D8)

    
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
    
}
