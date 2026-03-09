//
//  TargetProductDetailsTests.swift
//  TargetProductDetailsTests
//
//  Created by Aleem on 06/03/2026.
//

import Testing
@testable import TargetProductDetailsPage

@MainActor
struct TargetProductDetailsTests {
    
    /// Verifies that a Product instance is correctly initialized
    /// with the provided property values.
    @Test func productInitialization() async throws {
        let product = Product(
            id: "1",
            name: "Test Product",
            price: 100.0,
            description: "Test Description",
            imageName: "test_image"
        )
        
        #expect(product.id == "1")
        #expect(product.name == "Test Product")
        #expect(product.price == 100.0)
        #expect(product.description == "Test Description")
        #expect(product.imageName == "test_image")
    }
    
    
    /// Validates that ProductDetailViewModel initializes
    /// with the expected default product configuration.
    @Test func viewModelInitialProduct() async throws {
        let viewModel = ProductDetailViewModel()
        
        #expect(viewModel.product.id == "1")
        #expect(viewModel.product.name == "Apple AirPods Pro (2nd Generation)")
        #expect(viewModel.product.price == 249.99)
        #expect(viewModel.product.imageName == "airpods")
    }
    
}
