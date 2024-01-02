ListView in SwiftUI.
====================

<img src="https://github.com/Elaidzha1940/ListView/assets/64445918/f851737b-5471-42d7-bcac-40cae85813d0" width="390" height="580">
<img src="https://github.com/Elaidzha1940/ListView/assets/64445918/4271b58e-b4eb-432b-8c51-35274f1a535b" width="390" height="580">

-----------------------------------------------------------------------------------------------------------------------------------

ListView -
-----------
``````````````ruby
import SwiftUI

struct ListView: View {
    private var iOS = [
        "Objective-C",
        "Swift",
        "SwiftUI"
    ]
    
    var body: some View {
        
        NavigationStack {
            List(iOS, id: \.self) { iOS in
                Text(iOS)
                    .listRowBackground(Color.black.opacity(0.4))
            }
            .listRowBackground(Color.red)
            .font(.system(size: 20, weight: .semibold, design: .rounded))
            .background(
                Image("BgImage")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
            .scrollContentBackground(.hidden)
            .navigationTitle("Forest")
            .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ListView()
}

``````````````

ListView2 -
------------
``````````````ruby
import SwiftUI

struct ListView2: View {
    private var iOS = [
        "Objective-C",
        "Swift",
        "SwiftUI"
    ]
    
    var body: some View {
        
        NavigationStack {
            List(iOS, id: \.self) { iOS in
                Text(iOS)
                    .listRowBackground(Color.white.opacity(0.2))
            }
            .listRowBackground(Color.red)
            .font(.system(size: 20, weight: .semibold, design: .rounded))
            .background(
                LinearGradient(stops: [
                    Gradient.Stop(color: .black.opacity(0.8), location: 1),
                    Gradient.Stop(color: .mint.opacity(0.7), location: 0),
                ], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .scrollContentBackground(.hidden)
            .navigationTitle("Forest")
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ListView2()
}
``````````````
