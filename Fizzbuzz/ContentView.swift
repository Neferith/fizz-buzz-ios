//
//  ContentView.swift
//  Fizzbuzz
//
//  Created by Vivien on 26/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var data: [String] = [
    "The Wire",
    "Breaking Bad",
    "Dexter",
    "Queen of the South",
    "The OA",
    "Stranger Things",
    "Narcos",
    "True Detective",
    "Game of Thrones"
    ]
    
    
    var body: some View {
        VStack(spacing: .zero) {
                    Text("SwiftUI Series")
                        .font(.title)
                        .padding(.bottom, 60)
                    ScrollView {
                        LazyVStack(spacing: .zero) {
                            ForEach(data, id: \.self) { text in
                                VStack(spacing: .zero) {
                                    Spacer()
                                    HStack(spacing: .zero) {
                                        Text(text)
                                        Spacer()
                                        Button(action: {
                                            moveToTop(text)
                                        }, label: {
                                            Text("Move to top")
                                                .font(.system(size: 15))
                                        })
                                    }
                                    Spacer()
                                    Divider()
                                }
                                .frame(height: 50)
                            }
                        }
                    }
                    Spacer()
                }
                .padding(16)
        
        
    }
    
    private func moveToTop(_ serie: String) {
          data.removeAll { value in
              value == serie
          }
          data.insert(serie, at: 0)
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
