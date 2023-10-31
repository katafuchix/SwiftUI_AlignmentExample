//
//  BaseLineAlignmentExampleView.swift
//  SwiftUI_AlignmentExample
//
//  Created by cano on 2023/10/31.
//

import SwiftUI

struct BaseLineAlignmentExampleView: View {
    
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
        VStack {
            HStack {
                SimpleView()
                    .frame(alignment: alignment.value)
            }
            //.border(Color.red)
            
            Picker("Alignment", selection: $alignment) {
                ForEach(alignments, id: \.self) { alignment in
                        Text(String(describing: alignment))
                    }
            }.pickerStyle(WheelPickerStyle())
        }
    }
}

struct SimpleView: View{
    var body: some View {
        
            Image("cat")
            Text("Use vertical alignment guides to position views relative to one another vertically.")
                .frame(width: 240)
        /*
        Color.red.frame(height: 1)
        Text("Last Text Baseline").font(.title).border(.gray)
        Color.red.frame(height: 1)
         */
    }
}

#Preview {
    BaseLineAlignmentExampleView()
}
