//
//  ContentView.swift
//  SwiftUI_AlignmentExample
//
//  Created by cano on 2023/10/31.
//

import SwiftUI

struct ContentView: View {
    

    var body: some View {
        VStack {
            NavigationStack {
                List {
                    Section(header: Text("Views")) {
                        
                        NavigationLink("TextAlignment Example", destination: TextAlignmentExampleView())
                        
                        NavigationLink("VStack Example", destination: VStackExampleView())
                        
                        
                        NavigationLink("HStack Example", destination: HStackExampleView())
                         
                        /*
                         NavigationLink("ZStackExample", destination: ZStackExampleView())
                         */
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
