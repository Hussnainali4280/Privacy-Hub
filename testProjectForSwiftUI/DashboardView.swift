//
//  DashboardView.swift
//  testProjectForSwiftUI
//
//  Created by Hussnain Ali on 10/09/2024.
//

import SwiftUI

struct DashboardView: View {
    
    @ObservedObject var infoViewModel = InfoViewModel()
    
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        NavigationView{
            VStack{
                HStack{
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 30,height: 30)
                    Text("Privacy Hub")
                        .font(.title)
                        .fontWeight(.bold)
                }
                .padding(.top, 16)
                
                Button(action: {
                    debugPrint("Go Premium")
                }){
                    HStack{
                        Image(systemName: "diamond.fill")
                            .foregroundColor(.blue)
                        Text("Go Premium")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                }
                .padding(.horizontal)
                .padding(.top, 0)
                
                
                
                ScrollView(.horizontal, showsIndicators: true){
                    LazyHGrid(rows: [GridItem(.flexible())],spacing: 0){
                        ForEach(infoViewModel.infoCards){
                            infoCard in
                            InfoCardCell(infoCards: infoCard){
                                debugPrint(infoCard.id)
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        }
                        .padding(.horizontal)
                    }
                    .padding(.top, 8)
                    .frame(height: 200) // Adjust height based on item size
                    
                    //                       Spacer()
                }
                Button(action: {
                    debugPrint("Connect Button Pressed")
                }){
                    VStack{
                        Image(systemName: "shield.fill")
                            .resizable()
                            .frame(width: 60,height: 60)
                            .foregroundColor(.blue)
                        Text("Tap to connect")
                            .foregroundColor(.black)
                    }
                }
                .padding(20)
                Spacer()
                
            }
            .navigationTitle("Dashbroad")
            .navigationBarTitleDisplayMode(.automatic)
//        }
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}




