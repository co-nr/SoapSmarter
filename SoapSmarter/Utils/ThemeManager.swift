import SwiftUI

enum ColorSchemeOption: String, CaseIterable {
    case system = "System"
    case light = "Light"
    case dark = "Dark"
}

@Observable
final class ThemeManager {
    
    @AppStorage("selectedTheme")  @ObservationIgnored private  var storedTheme: String = "DefaultTheme"
    @AppStorage("colorSchemeOption")  @ObservationIgnored private  var storedColorScheme: String = "system"
    
    var selectedTheme: ThemeProtocol = DefaultTheme() {
        didSet {
            storedTheme = themeIdentifier(for: selectedTheme)
        }
    }
    
    var colorSchemeOption: ColorSchemeOption = .system {
        didSet {
            storedColorScheme = colorSchemeOption.rawValue
            applyColorScheme()
        }
    }
    
    var tintColor: Color { selectedTheme.tintColor }
    var primaryBackgroundColor: Color { selectedTheme.primaryBackgroundColor }
    var secondaryBackgroundColor: Color { selectedTheme.secondaryBackgroundColor }
    var labelColor: Color { selectedTheme.labelColor }
    
    init() {
        selectedTheme = themeForIdentifier(storedTheme)
        colorSchemeOption = ColorSchemeOption(rawValue: storedColorScheme) ?? .system
        applyColorScheme()
    }
    
    func setTheme(_ theme: ThemeProtocol) {
        selectedTheme = theme
    }
    
    private func applyColorScheme() {
        let style: UIUserInterfaceStyle
        switch colorSchemeOption {
        case .system: style = .unspecified
        case .light: style = .light
        case .dark: style = .dark
        }
        
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first?
            .windows
            .forEach { $0.overrideUserInterfaceStyle = style }
    }
    
    
    private func themeIdentifier(for theme: ThemeProtocol) -> String {
        switch theme {
        case is DefaultTheme: return "DefaultTheme"
        case is DesertTheme: return "DesertTheme"
        case is OceanTheme: return "OceanTheme"
        case is ForestTheme: return "ForestTheme"
        case is DreamTheme: return "DreamTheme"
        default: return "MainTheme"
        }
    }
    
    private func themeForIdentifier(_ identifier: String) -> ThemeProtocol {
        switch identifier {
        case "DefaultTheme": return DefaultTheme()
        case "DesertTheme": return DesertTheme()
        case "OceanTheme": return OceanTheme()
        case "DreamTheme": return DreamTheme()
        default: return DefaultTheme()
        }
    }
}
