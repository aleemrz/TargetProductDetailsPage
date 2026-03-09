
import Foundation

/// Represents a product entity used in the product detail screen,
/// containing identifying information, pricing, description,
/// and the associated image resource.
struct Product: Identifiable {
    let id: String
    let name: String
    let price: Double
    let description: String
    let imageName: String
}
