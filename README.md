# TargetProductDetails

TargetProductDetails is a SwiftUI application that displays product information and allows a user to simulate adding the product to a cart. The project demonstrates a simple MVVM architecture, SwiftUI state management, and basic unit testing using Apple's Swift Testing framework.

---

## Architecture

The project follows the **MVVM (Model–View–ViewModel)** pattern.

- **Model**  
  Represents the product data structure used throughout the application.

- **View**  
  Responsible for rendering the UI and reacting to state changes.

- **ViewModel**  
  Manages product data and exposes observable properties used by the view.

This separation improves maintainability and testability.

---

## Project Structure
TargetProductDetails
│
├── App
│ └── TargetProductDetailsApp.swift # App entry point
│
├── Views
│ ├── ContentView.swift # Main screen
│ └── ProductDetailView.swift # Product detail UI
│
├── ViewModels
│ └── ProductDetailViewModel.swift # Business logic
│
├── Models
│ └── Product.swift # Data model
│
└── Tests
└── TargetProductDetailsTests.swift # Unit tests
---

## Components

**ContentView**  
Entry point view that embeds `ProductDetailView` inside a `NavigationView`.

**ProductDetailView**  
Displays product image, name, price, and description.  
Includes an **Add to Cart** button that simulates a loading state and updates UI once the product is added.

**ProductDetailViewModel**  
Provides the product data to the view using `ObservableObject` and `@Published`.

**Product Model**  
Defines the product entity containing:

- id
- name
- price
- description
- imageName

---

## State Management

SwiftUI property wrappers are used for state management:

- `@StateObject` – manages ViewModel lifecycle
- `@Published` – notifies view of data changes
- `@State` – handles view-specific UI states

---

## Unit Testing

The project includes unit tests implemented using the **Swift Testing framework (`Testing`)**.

### Test Coverage

Tests validate:

- Correct initialization of the `Product` model
- Proper default configuration of `ProductDetailViewModel`

### Example Tests

- `productInitialization`  
  Verifies that a `Product` instance correctly stores provided values.

- `viewModelInitialProduct`  
  Ensures `ProductDetailViewModel` initializes with the expected default product.

---

## Technologies Used

- Swift
- SwiftUI
- Combine
- Swift Testing Framework

---

## Running the Project

1. Open the project in **Xcode**
2. Select the **TargetProductDetails** scheme
3. Run the app on a simulator or device

---

## Notes

This project demonstrates a simple SwiftUI implementation using MVVM architecture, UI state handling, and basic unit testing practices.
