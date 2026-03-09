
import Foundation
import SwiftUI
internal import Combine

/// ViewModel responsible for managing and exposing product data
/// to the ProductDetailView using the ObservableObject pattern.
class ProductDetailViewModel: ObservableObject {

    @Published var product: Product

    init() {
        product = Product(
            id: "1",
            name: "Apple AirPods Pro (2nd Generation)",
            price: 249.99,
            description: "Active Noise Cancellation for immersive sound. Transparency mode for hearing the world around you.",
            imageName: "airpods"
        )
    }

}
