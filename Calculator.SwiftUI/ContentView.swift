//
//  ContentView.swift
//  Calculator.SwiftUI
//
//  Created by ARDA CAN UYSAL on 25.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    let buttons  = [
    
    ["7","8","9","X"],
    ["4","5","6","-"],
    ["1","2","3","+"],
    ["0",".",".","="],
    
    ]
    

    var body: some View {
        ZStack(alignment: .bottom){
            Color.black.edgesIgnoringSafeArea(.all)

            VStack {
                
        
   
                
                Text("000").foregroundColor(.white)
                    .font(.system(size: 64))
            
                
            }
            
            
                ForEach(buttons, id: \.self){ row in
                    HStack{
                        ForEach(row, id: \.self) { button in
                            Text(button)
                                .font(.system(size: 32))
                                .frame(width: 80, height: 80)
                                .foregroundColor(.white)
                        }
                        
                    }
                }
              
                
             
            }
        }

        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

