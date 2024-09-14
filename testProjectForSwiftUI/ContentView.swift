
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ServerViewModel()
    @State private var isDetailViewActive = false // Tracks navigation state
    @State private var isSheetPresented = false
    @State private var connectionStatusText = "Tap To Disconnect"
    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    Image(systemName: "shield")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Privacy Hub")
                        .font(.title)
                        .fontWeight(.bold)
                }
                .padding(.top, 10)
                
                Button(action: {
                    // Action for Premium Unlock button
                    debugPrint("button Pressed")
                    isSheetPresented = true // Present the sheet
                }) {
                    HStack {
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
                .padding(.top, 10)
                .sheet(isPresented: $isSheetPresented) {
                                  DashboardView() // Content of the sheet
                               }
                               
               
                
                // Timer Section
                HStack {
                    Spacer()
                    Text("00:09:53")
                        .font(.headline)
                    Image(systemName: "info.circle")
                }
                .padding(.horizontal)
                .padding(.top, 5)
                
                // Breach Info
                
                VStack {
                    Text("509,458,528 Facebook accounts breached")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                    Text("Source: have i been pwned")
                        .font(.caption)
                        .padding(.top, 5)
                }
                
                // VPN Connection Button
                Button(action: {
                    // Action for connect/disconnect
                    // NavigationLink to move to the next screen
                    // Programmatic navigation using NavigationLink with the state variable
                    // Trigger navigation by changing the state
                            
                    connectionStatusText = connectionStatusText == "Tap To Disconnect" ? "Tap to connect" : "Tap To Disconnect"
                                 
                              
                 
                }) {
                    VStack {
                        Image(systemName: "shield.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.blue)
                        Text(connectionStatusText)
                            .font(.headline)
                            .padding(.top, 5)
                    }
                }
                .padding()
                
                NavigationLink(destination: DashboardView(), isActive: $isDetailViewActive) {
                    EmptyView() // NavigationLink is hidden but triggered by the state
                }

                // Server Selection as CollectionView-style layout
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: [GridItem(.flexible())], spacing: 20) {
                        ForEach(viewModel.servers) { server in
                            ServerCell(server: server){
                                debugPrint(server.id)
                                isDetailViewActive = true
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(height: 150) // Adjust height based on item size
                
                Spacer()
                
                
                // Secure Connection Status
                Text("Internet now Secured")
                    .foregroundColor(.orange)
                    .padding(.top, 10)
                
                HStack {
                    Image(systemName: "flag.fill")
                        .foregroundColor(.green)
                    Text("139.84.233.67")
                }
                .padding(.top, 5)
                
//                Spacer()
            }
            
//            .navigationTitle("First")
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
