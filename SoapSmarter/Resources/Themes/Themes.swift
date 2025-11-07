import SwiftUI

protocol ThemeProtocol {
    var tintColor: Color { get }
    var primaryBackgroundColor: Color { get }
    var secondaryBackgroundColor: Color { get }
    var labelColor: Color { get }
}

struct DefaultTheme: ThemeProtocol {
    var tintColor: Color { return Color("DefaultTintColor") }
    var primaryBackgroundColor: Color { return Color("DefaultPrimaryBackgroundColor") }
    var secondaryBackgroundColor: Color { return Color("DefaultSecondaryBackgroundColor") }
    var labelColor: Color { return Color("DefaultLabelColor") }
}

struct DesertTheme: ThemeProtocol {
    var tintColor: Color { return Color("DesertTintColor") }
    var primaryBackgroundColor: Color { return Color("DesertPrimaryBackgroundColor") }
    var secondaryBackgroundColor: Color { return Color("DesertSecondaryBackgroundColor") }
    var labelColor: Color { return Color("DesertLabelColor") }
}

struct OceanTheme: ThemeProtocol {
    var tintColor: Color { return Color("OceanTintColor") }
    var primaryBackgroundColor: Color { return Color("OceanPrimaryBackgroundColor") }
    var secondaryBackgroundColor: Color { return Color("OceanSecondaryBackgroundColor") }
    var labelColor: Color { return Color("OceanLabelColor") }
}

struct ForestTheme: ThemeProtocol {
    var tintColor: Color { return Color("ForestTintColor") }
    var primaryBackgroundColor: Color { return Color("ForestPrimaryBackgroundColor") }
    var secondaryBackgroundColor: Color { return Color("ForestSecondaryBackgroundColor") }
    var labelColor: Color { return Color("ForestLabelColor") }
}

struct DreamTheme: ThemeProtocol {
    var tintColor: Color { return Color("DreamTintColor") }
    var primaryBackgroundColor: Color { return Color("DreamPrimaryBackgroundColor") }
    var secondaryBackgroundColor: Color { return Color("DreamSecondaryBackgroundColor") }
    var labelColor: Color { return Color("DreamLabelColor") }
}
