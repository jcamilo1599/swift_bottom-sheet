//
//  ContentView.swift
//  BottomSheet
//
//  Created by Juan Camilo Marín Ochoa on 19/06/23.
//

import SwiftUI

struct ContentView: View {
    @State var showBottomSheet = false
    
    var body: some View {
        VStack {
            Button("Presionar") {
                showBottomSheet.toggle()
            }
            .buttonStyle(.bordered)
            .padding()
        }
        .sheet(isPresented: $showBottomSheet) {
            SheetView()
                .presentationDetents([.medium])
                .presentationDragIndicator(.visible)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
