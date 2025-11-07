import SwiftUI

struct RootView: View {
    
    @State private var viewModel = RootViewModel()
    @State private var theme = ThemeManager()
    
    var body: some View {
        MainTabView()
            .environment(theme)
            .tint(theme.tintColor)
    }
}
