import SwiftUI

struct ThemedBackgroundModifier: ViewModifier {
    
    @Environment(ThemeManager.self) private var theme
    let title: String
    
    func body(content: Content) -> some View {
        content
            .background(theme.primaryBackgroundColor)
            .scrollContentBackground(.hidden)
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
    }
}

