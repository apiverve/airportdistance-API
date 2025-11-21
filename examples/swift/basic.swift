import Foundation
import APIVerveAirportDistance

// Initialize the API client with your API key
let client = AirportDistanceAPIClient(apiKey: "YOUR_API_KEY_HERE")

// Query parameters
let parameters: [String: Any] &#x3D; [&quot;iata1&quot;: &quot;JFK&quot;, &quot;iata2&quot;: &quot;LAX&quot;]

// Execute the API request using async/await (iOS 13+)
Task {
    do {
        let response = try await client.execute(parameters: parameters)

        if response.isSuccess {
            print("✅ Success!")
            if let data = response.data {
                print("Response data:", data)
            }
        } else {
            print("❌ API Error:", response.error ?? "Unknown error")
        }
    } catch let error as AirportDistanceAPIError {
        print("❌ Error:", error.localizedDescription)

        // Handle specific error types
        if error.isAuthenticationError {
            print("Invalid API key. Get your key at: https://apiverve.com")
        } else if error.isRateLimitError {
            print("Rate limit exceeded. Please try again later.")
        } else if error.isServerError {
            print("Server error. Please try again later.")
        }
    } catch {
        print("❌ Unexpected error:", error.localizedDescription)
    }
}

// Or use completion handlers
client.execute(parameters: parameters) { result in
    switch result {
    case .success(let response):
        if response.isSuccess {
            print("✅ Success!")
            if let data = response.data {
                print("Response data:", data)
            }
        } else {
            print("❌ API Error:", response.error ?? "Unknown error")
        }
    case .failure(let error):
        print("❌ Error:", error.localizedDescription)
    }
}

// Keep the app running to see results (for playground/script)
RunLoop.main.run()
