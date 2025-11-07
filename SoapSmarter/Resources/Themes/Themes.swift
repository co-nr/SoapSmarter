import SwiftUI

protocol ThemeProtocol {
    var tintColor: Color { get }
    var primaryBackgroundColor: Color { get }
    var secondaryBackgroundColor: Color { get }
    var labelColor: Color { get }
}

struct MainTheme: ThemeProtocol {
    var tintColor: Color { return Color("MainTintColor") }
    var primaryBackgroundColor: Color { return Color("MainPrimaryBackgroundColor") }
    var secondaryBackgroundColor: Color { return Color("MainSecondaryBackgroundColor") }
    var labelColor: Color { return Color("MainLabelColor") }
}

struct BlackWhiteTheme: ThemeProtocol {
    var tintColor: Color { return Color("BlackWhiteTintColor") }
    var primaryBackgroundColor: Color { return Color("BlackWhitePrimaryBackgroundColor") }
    var secondaryBackgroundColor: Color { return Color("BlackWhiteSecondaryBackgroundColor") }
    var labelColor: Color { return Color("BlackWhiteLabelColor") }
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
