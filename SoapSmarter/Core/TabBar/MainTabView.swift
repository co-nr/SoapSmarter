import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ExperimentView()
                .tabItem {
                    Label("Experiment", systemImage: "flask")
                }
                .tag(0)
            
            ShopView()
                .tabItem {
                    Label("Shop", systemImage: "basket")
                }
                .tag(1)
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(2)
        }
        .onChange(of: selectedTab) {
            HapticManager.tabSelection()
        }
    }
}

#Preview {
    PreviewWrapper {
        MainTabView()
    }
}
