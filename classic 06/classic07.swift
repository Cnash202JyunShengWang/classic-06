//
//  classic07.swift
//  classic 06
//
//  Created by 暨大附中 on 2021/9/28.
//

import SwiftUI

struct classic07: View {
    @State var myDgrees:Double=0
    @State var secend :Double=1
    var body: some View {
        VStack{
       Rectangle()
        .frame(width: 6, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .rotationEffect(Angle.degrees(myDgrees), anchor: .top)
            
            Button{
                secend  = secend+1
                myDgrees = secend*6
            }label:{
                Text("action")
            }
        }.animation(.easeInOut(duration:1.0))
    }
    
}

struct classic07_Previews: PreviewProvider {
    static var previews: some View {
        classic07()
    }
}
