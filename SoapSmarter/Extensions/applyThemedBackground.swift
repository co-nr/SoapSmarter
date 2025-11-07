import SwiftUI

extension View {
    func applyThemedBackground(title: String) -> some View {
        self.modifier(ThemedBackgroundModifier(title: title))
    }
}

