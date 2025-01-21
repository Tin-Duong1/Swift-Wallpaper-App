import SwiftUI

struct ContentView: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    let wallpapers: [Wallpaper] = [
        Wallpaper(name: "sage", imageName: "sage"),
        Wallpaper(name: "cypher", imageName: "cypher"),
        Wallpaper(name: "skye", imageName: "skye"),
        Wallpaper(name: "reyna", imageName: "reyna"),
        Wallpaper(name: "brimstone", imageName: "brimstone"),
        Wallpaper(name: "jett", imageName: "jett"),
        Wallpaper(name: "chamber", imageName: "chamber"),
        Wallpaper(name: "viper", imageName: "viper"),
        Wallpaper(name: "astra", imageName: "astra"),
        Wallpaper(name: "breach", imageName: "breach"),
        Wallpaper(name: "clove", imageName: "Clove"),
        Wallpaper(name: "gecko", imageName: "gecko"),
        Wallpaper(name: "harbor", imageName: "harbor"),
        Wallpaper(name: "killjoy", imageName: "killjoy"),
        Wallpaper(name: "kayo", imageName: "kayo"),
        Wallpaper(name: "neon", imageName: "neon"),
        Wallpaper(name: "omen", imageName: "omen"),
        Wallpaper(name: "pheonix", imageName: "pheonix"),
        Wallpaper(name: "raze", imageName: "raze"),
        Wallpaper(name: "sova", imageName: "sova"),
        Wallpaper(name: "yoru", imageName: "yoru"),
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(wallpapers) { wallpaper in
                        NavigationLink(destination: WallpaperView(wallpaper: wallpaper)) {
                            Image(wallpaper.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                                .cornerRadius(8)
                                .shadow(radius: 4)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.gray, lineWidth: 0.5)
                                )
                        }
                    }
                }
                .padding(.horizontal)
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.purple.opacity(0.5)]), startPoint: .top, endPoint: .bottom))
            .navigationBarTitle("Valorant Wallpaper")
        }
    }
}



#Preview {
    ContentView()
}
