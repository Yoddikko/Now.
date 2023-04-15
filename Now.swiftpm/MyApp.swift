import SwiftUI

@main
struct MyApp: App {
    let persistence = Persistence.previewFull
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some Scene {
        WindowGroup {
            MenuView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
                .environment(\.managedObjectContext, persistence.container.viewContext)
        }
    }
}
