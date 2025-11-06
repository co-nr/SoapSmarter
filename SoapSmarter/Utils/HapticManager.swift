import SwiftUI

class HapticManager {
    
    static let shared = HapticManager()
    
    @AppStorage("hapticsTabSelectionEnabled") private var hapticsTabSelectionEnabled: Bool = true
    @AppStorage("hapticsButtonPressEnabled") private var hapticsButtonPressEnabled: Bool = true
    
    static func tabSelection() {
        guard shared.hapticsTabSelectionEnabled else { return }
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.prepare()
        generator.impactOccurred(intensity: 0.7)
    }
    
    static func buttonPress() {
        guard shared.hapticsButtonPressEnabled else { return }
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
    }
}
