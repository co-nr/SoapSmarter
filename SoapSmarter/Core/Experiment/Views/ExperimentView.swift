import SwiftUI

struct ExperimentView: View {
    
    @State private var viewModel = ExperimetViewModel()
    
    var body: some View {
        Text(viewModel.title)
            .font(.title2)
    }
}

#Preview {
    ExperimentView()
}
