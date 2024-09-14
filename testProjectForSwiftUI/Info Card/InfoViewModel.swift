//
//  InfoViewModel.swift
//  testProjectForSwiftUI
//
//  Created by Hussnain Ali on 10/09/2024.
//

import SwiftUI
// ViewModel to manage the list of Info Cards
class InfoViewModel : ObservableObject{
    // The list of servers to be displayed
    @Published var infoCards : [InfoCardModel] = [InfoCardModel(id: 1, informationMessage: "Frist Card heading for isnf sfadf is not googd yet jsjjs Frist Card heading for isnf sfadf is not googd yet jsjjs Frist Card heading for isnf sfadf is not googd yet jsjjs Frist Card heading for isnf sfadf is not googd yet jsjjs Frist Card heading for isnf sfadf is not googd yet jsjjs Frist Card heading for isnf sfadf is not googd yet jsjjs ", source: "Bleeping Cell"),
                                                  InfoCardModel(id: 2, informationMessage: "Second Card", source: "Bleeping Cell2"),
                                                  InfoCardModel(id: 3, informationMessage: "Frist Card", source: "Bleeping Cell"),
                                                    InfoCardModel(id: 4, informationMessage: "Second Card", source: "Bleeping Cell2")]
}
