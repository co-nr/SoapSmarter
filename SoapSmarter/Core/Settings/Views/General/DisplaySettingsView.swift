import SwiftUI

struct DisplaySettingsView: View {
    
    @Environment(ThemeManager.self) private var theme
    
    var body: some View {
        NavigationStack {
            List {
                Section("Themes") {
                    ThemeSelectionButton(themeType: DefaultTheme(), label: "Default")
                    ThemeSelectionButton(themeType: DesertTheme(), label: "Desert")
                    ThemeSelectionButton(themeType: OceanTheme(), label: "Ocean")
                    ThemeSelectionButton(themeType: ForestTheme(), label: "Forest")
                    ThemeSelectionButton(themeType: DreamTheme(), label: "Dream")
                }
                .listRowBackground(theme.secondaryBackgroundColor)
            }
            .applyThemedBackground(title: "Display Settings")
        }
    }
}

struct ThemeSelectionButton<T: ThemeProtocol>: View {
    @Environment(ThemeManager.self) private var theme
    let themeType: T
    let label: String
    
    var body: some View {
        Button {
            theme.setTheme(themeType)
        } label: {
            HStack {
                Text(label)
                    .foregroundStyle(theme.labelColor)
                Spacer()
                if theme.selectedTheme is T {
                    Image(systemName: "checkmark")
                        .foregroundStyle(theme.tintColor)
                }
            }
        }
    }
}

#Preview {
    PreviewWrapper {
        DisplaySettingsView()
    }
}
