//
//  ServerViewModel.swift
//  testProjectForSwiftUI
//
//  Created by Hussnain Ali on 09/09/2024.
//

import SwiftUI

// ViewModel to manage the list of servers
class ServerViewModel: ObservableObject {
    // The list of servers to be displayed
    @Published var servers: [ServerModel] = [
        ServerModel(country: "Germany", city: "Frankfurt", flagIcon: "flag.fill"),
        ServerModel(country: "South Africa", city: "Johannesburg", flagIcon: "flag.fill"),
        ServerModel(country: "USA", city: "New York", flagIcon: "flag.fill"),
        ServerModel(country: "Japan", city: "Tokyo", flagIcon: "flag.fill"),
        ServerModel(country: "UK", city: "London", flagIcon: "flag.fill")
    ]
}


// A reusable cell view for displaying a server's details
struct ServerCell: View {
    var server: ServerModel
    var onTap: () -> Void
    var body: some View {
        VStack {
            Image(systemName: server.flagIcon) // Flag icon
                .foregroundColor(.blue) // Custom flag color
                .font(.system(size: 30)) // Adjust the icon size
            Text(server.country) // Country name
                .font(.headline)
            Text(server.city) // City name
                .font(.subheadline)
        }
        .padding()
        .background(Color(.systemGray6)) // Card-like background
        .cornerRadius(10)
        .shadow(radius: 5)
        .onTapGesture {
            onTap()
        }
    }
}
