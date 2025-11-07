import SwiftUI

struct ExperimentView: View {
    
    @Environment(ThemeManager.self) private var theme
    @State private var viewModel = ExperimetViewModel()
    
    var body: some View {
        Text(viewModel.title)
            .font(.title2)
            .foregroundStyle(theme.tintColor)
    }
}

#Preview {
    ExperimentView()
        .environment(ThemeManager())
}
