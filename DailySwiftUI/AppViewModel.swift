import Foundation

struct Application: Codable, Identifiable {
    var id:String = UUID().uuidString
    var day: Int
    var title: String
}

class AppViewModel: ObservableObject {
    @Published var Apps = [Application]()
    let AppData = [
        Application(day: 1, title: "Sign up")
    ]

}
