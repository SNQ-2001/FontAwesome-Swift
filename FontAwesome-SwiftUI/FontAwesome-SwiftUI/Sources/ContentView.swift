//
//  ContentView.swift
//  FontAwesome-SwiftUI
//
//  Created by MIYAMOTO TAISHIN on 2022/07/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<675) { index in
                    HStack(spacing: 0) {
                        Text(String.FontAwesome(unicode: icons.unicode[index]))
                            .font(.custom("FontAwesome", size: 20))
                            .frame(width: 40, alignment: .leading)
                        Text(icons.name[index])
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                        Spacer()
                        Text(icons.unicode[index])
                            .font(.system(size: 17))
                            .foregroundColor(.gray)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationBarTitle("Font Awesome")
        }
    }
}
