//
//  ContentView.swift
//  Calculator.SwiftUI
//
//  Created by ARDA CAN UYSAL on 25.01.2023.
//

import SwiftUI
enum CalculatorButton: String {
    
    case zero, one, two, three, four, five, six
    case equals, plus, minus, multiply, divide
    case ac, plusMinus, percent
    
    
    var background: Color {
        switch self  {
        case .zero:
            return Color(.darkGray)
        case .ac:
            return Color(.lightGray)
        default: return .orange
            
            
        }
    }
    
}
struct ContentView: View {
    
    let  buttons: [[CalculatorButton]] = [
        
        [.one, .two, .three, .plus],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus],
    
    ]
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
               
                HStack{
                    Spacer()
                    Text("0").foregroundColor(.white)
                        .font(.system(size:72))
                }.padding()
                
                ForEach(buttons,id: \.self){ row in
                    HStack (spacing: 12) {
                        ForEach(row, id: \.self){ button in
                            Text(button.rawValue)
                                .font(.system(size: 32))
                                .frame(width: self.buttonWidth() , height: self.buttonWidth())
                                .foregroundColor(.white)
                                .background(button.backgroundColor)
                                .cornerRadius(self.buttonWidth())
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
    
    func buttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) /  4
        
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

