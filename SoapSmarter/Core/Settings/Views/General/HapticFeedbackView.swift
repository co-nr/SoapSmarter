import SwiftUI

struct HapticFeedbackView: View {
    
    @Environment(ThemeManager.self) private var theme
    @AppStorage("hapticsTabSelectionEnabled") private var hapticsTabSelectionEnabled = true
    @AppStorage("hapticsButtonPressEnabled") private var hapticsButtonPressEnabled = true
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Toggle("Tab Selection", isOn: $hapticsTabSelectionEnabled)
                    Toggle("Button Press", isOn: $hapticsButtonPressEnabled)
                }
                .listRowBackground(theme.secondaryBackgroundColor)
            }
            .applyThemedBackground(title: "Haptic Settings")
        }
    }
}

#Preview {
    PreviewWrapper {
        HapticFeedbackView()
    }
}
