//
//  TextAlignmentExampleView.swift
//  SwiftUI_AlignmentExample
//
//  Created by cano on 2023/10/31.
//

// https://www.hackingwithswift.com/quick-start/swiftui/how-to-adjust-text-alignment-using-multilinetextalignment

import SwiftUI

struct TextAlignmentExampleView: View {
    
    let alignments: [TextAlignment] = [.leading, .center, .trailing]
    @State private var alignment = TextAlignment.leading
    
    var body: some View {
        Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
            .font(.largeTitle)
            .multilineTextAlignment(alignment)
            .frame(width: 300)
        
        Picker("Text alignment", selection: $alignment) {
            ForEach(alignments, id: \.self) { alignment in
                Text(String(describing: alignment))
            }
        }
    }
}

#Preview {
    TextAlignmentExampleView()
}
