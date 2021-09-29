//
//  third.swift
//  classic 06
//
//  Created by 暨大附中 on 2021/9/27.
//

import SwiftUI
struct third: View {
    @State var number = Date()
    @State var timeText = ""
    @State var timeText2 = ""
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        TabView{
        ZStack{
        Image("01")
            .resizable()
            .ignoresSafeArea()
                Rectangle()
                .frame(width: 230, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)))
                .cornerRadius(15)
            HStack{
        Rectangle()
            .frame(width:70, height:10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .offset(x:-20, y:-100)
            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.0634310658, blue: 0.02239393661, alpha: 1)))
        Rectangle()
            .frame(width:70, height:10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .offset(x:20, y:-100)
            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.0634310658, blue: 0.02239393661, alpha: 1)))
            }
            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height:5, alignment:.bottom)
                .offset(x: 0, y:80)
            HStack{
            Rectangle()
                .frame(width: 15, height:150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x:90, y: -20)
                .foregroundColor(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
            Rectangle()
                .frame(width: 15, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x:-90, y: -20)
                .foregroundColor(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
            }
        VStack{
            Spacer()
            ZStack{
                Rectangle()
                    .foregroundColor(Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)))
                    .frame(width: 400, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            Text("今年\(timeText)")
                             .onReceive(timer){ input in
                                 number = input
                                 let dataformate = DateFormatter()
                                 dataformate.dateFormat = "YYYY/MM/dd"
                                 timeText = dataformate.string(from: input)
                             }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }.offset(x:0, y: -120)
            Spacer()
           ZStack{
                Rectangle()
                    .foregroundColor(Color(#colorLiteral(red: 0.0705564131, green: 0.9686274529, blue: 0.06901640749, alpha: 1)))
                    .frame(width: 60, height:60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(90)
            Text("\(timeText2)")
            .onReceive(timer){ input in
            number = input
             let dataformate = DateFormatter()
            dataformate.dateFormat = "HH:ss"
            timeText2 = dataformate.string(from: input)
            }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
           }.offset(x:0, y:-120)
            Spacer()
    }
        }.tabItem { Image(systemName:"sun.min") }
            ZStack{
                Image("02")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    Text("竣陞的專屬時鐘")
                        .frame(width: 150, height:100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    ZStack{
                        Rectangle()
                            .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(26)
                            .font(.largeTitle)
                Text("\(timeText)")
                .onReceive(timer){ input in
                number = input
                let dataformate = DateFormatter()
                dataformate.dateFormat = "YYYY/MM/dd"
             timeText = dataformate.string(from: input)
                }
                    }
                    Spacer()
                    Spacer()
                    ZStack{
                        Rectangle()
                            .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(#colorLiteral(red: 0.6969673472, green: 0.2538458333, blue: 0.7148295924, alpha: 1)))
                            .cornerRadius(26)
                            .font(.largeTitle)
                Text("\(timeText2)")
                .onReceive(timer){ input in
                number = input
                let dataformate = DateFormatter()
             dataformate.dateFormat = "HH:mm:ss"
        timeText2 = dataformate.string(from: input)
                                 }
                    }
                    Spacer()
                                         }.tabItem { Image(systemName:"sun.min") }
            }

        }.tabViewStyle(PageTabViewStyle())

}
}
struct third_Previews: PreviewProvider {
    static var previews: some View {
        third()
    }
}
