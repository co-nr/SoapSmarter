import SwiftUI

struct PreviewWrapper<V: View>: View {
    
    var content: () -> V
    
    var body: some View {
        content()
            .environment(ThemeManager())
            .tint(ThemeManager().tintColor)
    }
}
