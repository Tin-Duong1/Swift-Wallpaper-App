import SwiftUI

struct WallpaperView: View {
    var wallpaper: Wallpaper

    var body: some View {
        Image(wallpaper.imageName)
            .resizable()
            .scaledToFit()
            .navigationBarTitle(Text(wallpaper.name), displayMode: .inline)
    }
}

struct WallpaperView_Previews: PreviewProvider {
    static var previews: some View {
        WallpaperView(wallpaper: Wallpaper(name: "Sample", imageName: "sample"))
    }
}


