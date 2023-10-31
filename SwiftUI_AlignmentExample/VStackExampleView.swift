//
//  VStackExampleView.swift
//  SwiftUI_AlignmentExample
//
//  Created by cano on 2023/10/31.
//

import SwiftUI

struct HorizontalAlignmentModel {
    
}

struct VStackExampleView: View {
    
    let alignments: [HorizontalAlignments] = [.leading, .center, .trailing]
    @State private var alignment = HorizontalAlignments.leading
    
    enum HorizontalAlignments: CaseIterable {
        case leading
        case center
        case trailing
        
        var value: HorizontalAlignment {
            switch self {
            case .leading:      return HorizontalAlignment.leading
            case .center:       return HorizontalAlignment.center
            case .trailing:     return HorizontalAlignment.trailing
            }
        }
    }
    
    var body: some View {
        VStack {
            VStack(alignment: alignment.value) {
                Image("cat")
                Text("Hello, world!")
                    .font(.largeTitle)
                Text("City")
                Text("New York")
                
            }
            VStack {
                Picker("Pokemon", selection: $alignment) {
                    ForEach(alignments, id: \.self) { alignment in
                            Text(String(describing: alignment))
                        }
                }.pickerStyle(WheelPickerStyle())
            }
        }
    }
}

#Preview {
    VStackExampleView()
}
