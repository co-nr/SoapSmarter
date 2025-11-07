import SwiftUI

struct SettingsView: View {
    
    @State private var viewModel = SettingsViewModel()
    @Environment(ThemeManager.self) private var theme
    
    var body: some View {
        NavigationStack {
            List {
                general
            }
            .applyThemedBackground(title: "Settings")
        }
    }
}

private extension SettingsView {
    
    var general: some View {
        Section("General") {
            NavigationLink(destination: DisplaySettingsView()) { Label("Display Settings", systemImage: "paintpalette") }
            NavigationLink(destination: HapticFeedbackView()) { Label("Haptic Feedback", systemImage: "waveform.path") }
        }
        .listRowBackground(theme.secondaryBackgroundColor)
    }
    
}

#Preview {
    PreviewWrapper {
        SettingsView()
    }
}
