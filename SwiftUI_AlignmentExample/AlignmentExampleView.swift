//
//  AlignmentExampleView.swift
//  SwiftUI_AlignmentExample
//
//  Created by cano on 2023/10/31.
//

import SwiftUI

struct AlignmentExampleView: View {
    var body: some View {
        VStack() {
            HStack() {
                Text("top guides").font(.headline).padding(10)
            }
            HStack() {
                Text("topLeading")
                    .padding(4)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .frame(width: 120, height: 120, alignment: .topLeading)
                    .border(Color.black)
                Text("top")
                    .padding(4)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .frame(width: 120, height: 120, alignment: .top)
                    .border(Color.black)
                Text("topTrailing")
                    .padding(4)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .frame(width: 120, height: 120, alignment: .topTrailing)
                    .border(Color.black)
            }
            HStack() {
                Text("middle guides").font(.headline).padding(10)
            }
            HStack() {
                Text("leading")
                    .padding(4)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .frame(width: 120, height: 120, alignment: .leading)
                    .border(Color.black)
                Text("center")
                    .padding(4)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .frame(width: 120, height: 120, alignment: .center)
                    .border(Color.black)
                Text("trailing")
                    .padding(4)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .frame(width: 120, height: 120, alignment: .trailing)
                    .border(Color.black)
            }
            HStack() {
                Text("bottom guides").font(.headline).padding(10)
            }
            HStack() {
                Text("bottomLeading")
                    .padding(4)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .frame(width: 120, height: 120, alignment: .bottomLeading)
                    .border(Color.black)
                Text("bottom")
                    .padding(4)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .frame(width: 120, height: 120, alignment: .bottom)
                    .border(Color.black)
                Text("bottomTrailing")
                    .padding(4)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .frame(width: 120, height: 120, alignment: .bottomTrailing)
                    .border(Color.black)
            }
        }
    }
}

#Preview {
    AlignmentExampleView()
}
