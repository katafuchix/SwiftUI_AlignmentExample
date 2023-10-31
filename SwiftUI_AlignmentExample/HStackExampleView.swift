//
//  HStackExampleView.swift
//  SwiftUI_AlignmentExample
//
//  Created by cano on 2023/10/31.
//

import SwiftUI

struct HStackExampleView: View {
    
    let alignments: [VerticalAlignments] = [.top, .center, .bottom, .firstTextBaseline, .lastTextBaseline]
    @State private var alignment = VerticalAlignments.top
    
    enum VerticalAlignments: CaseIterable {
        case top
        case center
        case bottom
        case firstTextBaseline
        case lastTextBaseline
        
        var value: VerticalAlignment {
            switch self {
            case .top:      return VerticalAlignment.top
            case .center:   return VerticalAlignment.center
            case .bottom:   return VerticalAlignment.bottom
            case .firstTextBaseline:    return VerticalAlignment.firstTextBaseline
            case .lastTextBaseline:     return VerticalAlignment.lastTextBaseline
            }
        }
    }
    
    var body: some View {
        VStack {
            HStack(alignment: alignment.value) {
                Image("cat")
                Text("Use vertical alignment guides to position views relative to one another vertically.")
                    .frame(width: 240)
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
    HStackExampleView()
}
