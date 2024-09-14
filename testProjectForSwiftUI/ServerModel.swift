//
//  ServerModel.swift
//  testProjectForSwiftUI
//
//  Created by Hussnain Ali on 09/09/2024.
//

import Foundation


// Model to represent each server's data
struct ServerModel: Identifiable {
    let id = UUID() // Unique identifier for each server
    let country: String
    let city: String
    let flagIcon: String
}
