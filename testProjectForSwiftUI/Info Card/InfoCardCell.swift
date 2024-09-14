//
//  InfoCardCell.swift
//  testProjectForSwiftUI
//
//  Created by Hussnain Ali on 10/09/2024.
//

import SwiftUI
struct InfoCardCell: View {
    var infoCards: InfoCardModel
    var onTap: () -> Void //Callback to handel tap
    var body: some View {
        VStack(alignment: .leading) { // Align content to the left
            Text(infoCards.informationMessage)
                .font(.headline)
                .padding(.bottom, 8)

            Text("Source: \(infoCards.source)")
                .font(.subheadline)
        }
        .padding()
        .background(Color(.systemGray6)) // Card-like background
        .cornerRadius(10)
        .shadow(radius: 5)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(maxWidth: 300) // Full width, aligned left
        .padding([.leading, .trailing], 0) // Padding to avoid touching screen edges
        .onTapGesture {
            onTap()
        }
    }
}


