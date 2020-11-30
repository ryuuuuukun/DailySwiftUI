import SwiftUI

struct ScreenListView: View {
    var body: some View {
        ScrollView {
            VStack {
                    MenuItem(destinationView: Day1SignUpView(), title: "Sign up", day: 1)
                    MenuItem(destinationView: Day2CheckOutView(), title: "Check Out", day: 2)
                    Spacer()
                }
            .padding([.top, .leading, .trailing])
        }.navigationTitle("App List")
    }
}

struct MenuItem<Content: View>: View {
    private var destinationView: Content
    let title: String
    let day: Int

    init(destinationView: Content, title: String, day: Int) {
        self.destinationView = destinationView
        self.title = title
        self.day = day
    }

    var body : some View {
        NavigationLink(destination:  destinationView) {
            HStack {
                HStack(spacing: 0.0) {
                    Text("Day")
                    Text("\(day)")
                }
                Text(title)
            }
            .padding(16.0)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color("CardBack"))
            .cornerRadius(12)
            .foregroundColor(Color("LabelPrimary"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenListView()
    }
}
