//
//  AlignmentPickerExampleView.swift
//  SwiftUI_AlignmentExample
//
//  Created by cano on 2023/10/31.
//

import SwiftUI

struct AlignmentPickerExampleView: View {
    
    let alignments: [Alignments] = [
            .topLeading,
            .top,
            .topTrailing,
            .leading,
            .center,
            .trailing,
            .bottomLeading,
            .bottom,
            .bottomTrailing,
            .leadingFirstTextBaseline,
            .centerFirstTextBaseline,
            .trailingFirstTextBaseline,
            .leadingLastTextBaseline,
            .centerLastTextBaseline,
            .trailingLastTextBaseline
    ]
    
    @State private var alignment = Alignments.topLeading
    
    enum Alignments: CaseIterable {
        case topLeading
        case top
        case topTrailing
        case leading
        case center
        case trailing
        case bottomLeading
        case bottom
        case bottomTrailing
        case leadingFirstTextBaseline
        case centerFirstTextBaseline
        case trailingFirstTextBaseline
        case leadingLastTextBaseline
        case centerLastTextBaseline
        case trailingLastTextBaseline
        
        
        var value: Alignment {
            switch self {
            case .topLeading:   return Alignment.topLeading
            case .top:   return Alignment.top
            case .topTrailing:   return Alignment.topTrailing
            case .leading:   return Alignment.leading
            case .center:   return Alignment.center
            case .trailing:   return Alignment.trailing
            case .bottomLeading:   return Alignment.bottomLeading
            case .bottom:   return Alignment.bottom
            case .bottomTrailing:   return Alignment.bottomTrailing
            case .leadingFirstTextBaseline:   return  Alignment.leadingFirstTextBaseline
            case .centerFirstTextBaseline:   return  Alignment.centerFirstTextBaseline
            case .trailingFirstTextBaseline:   return  Alignment.trailingFirstTextBaseline
            case .leadingLastTextBaseline:   return  Alignment.leadingLastTextBaseline
            case .centerLastTextBaseline:   return  Alignment.centerLastTextBaseline
            case .trailingLastTextBaseline:   return Alignment.trailingLastTextBaseline
                
            }
        }
    }
    
    var body: some View {
        VStack() {
            HStack() {
                Text(String(describing: alignment))
                    .padding(4)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .frame(width: 200, height: 200, alignment: alignment.value)
                    .border(Color.black)
            }
            
                Picker("Alignment", selection: $alignment) {
                    ForEach(alignments, id: \.self) { alignment in
                            Text(String(describing: alignment))
                        }
                }.pickerStyle(WheelPickerStyle())
            
        }
    }
}

#Preview {
    AlignmentPickerExampleView()
}
