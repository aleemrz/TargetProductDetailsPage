import SwiftUI

/// Displays detailed information about a selected product
/// and provides the ability to add the product to the cart.
struct ProductDetailView: View {
    
    /// ViewModel responsible for providing product data to the view.
    @StateObject var viewModel = ProductDetailViewModel()
    
    /// Indicates whether the add-to-cart operation is currently in progress.
    @State private var isLoading = false
    
    /// Tracks whether the product has been successfully added to the cart.
    @State private var isAdded = false
    
    /// Main UI layout presenting the product image, details,
    /// and the add-to-cart action button.
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                
                Image(viewModel.product.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .padding()
                
                VStack(alignment: .leading, spacing: 8) {
                    
                    Text(viewModel.product.name)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("$\(viewModel.product.price, specifier: "%.2f")")
                        .font(.title2)
                        .foregroundColor(.red)
                    
                    Text(viewModel.product.description)
                        .font(.body)
                    
                }
                
                Button(action: addToCart) {
                    
                    if isLoading {
                        ProgressView()
                            .frame(maxWidth: .infinity)
                            .padding()
                    } else {
                        Text(isAdded ? "Added in Cart" : "Add to Cart")
                            .frame(maxWidth: .infinity)
                            .padding()
                    }
                    
                }
                .background(isAdded ? Color.white : Color.red)
                .foregroundColor(isAdded ? .green : .white)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(isAdded ? Color.green : Color.clear, lineWidth: 2)
                )
                .cornerRadius(12)
                .disabled(isLoading || isAdded)
                
            }
            .padding()
            
        }
        .navigationTitle("Product Detail")
    }
    
    /// Handles the add-to-cart action.
    /// Simulates a network delay and updates UI state when the operation completes.
    func addToCart() {
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isLoading = false
            isAdded = true
        }
    }
}

/// SwiftUI preview configuration for rendering the ProductDetailView
/// within a navigation container during development.
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProductDetailView()
        }
    }
}
