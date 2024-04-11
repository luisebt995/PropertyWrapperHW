//
//  ContentView.swift
//  PropertyWrapperHW
//
//  Created by Luis on 10/4/24.
//

import SwiftUI

struct ContentView: View {
    @State var cont1 : Int = 0
    @State var cont2 : Int = 0
    @State var cont3 : Int = 0
    
    var body: some View {
        VStack{
            Spacer()
            Text("\(cont1+cont2+cont3)")
                .font(.system(size: 40, weight: .heavy))
                .padding(50)
                .background(.mint)
                .clipShape(Circle())
            Spacer()
            HStack{
                ElBoton(cont: $cont1)
                ElBoton(cont: $cont2)
                ElBoton(cont: $cont3)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ElBoton: View {
    @Binding var cont : Int
    
    var body: some View {
        Button("\(cont)"){
            cont += 1
        }
        .padding(25)
        .font(.system(size: 20, weight: .heavy))
        .foregroundColor(.white)
        .background(.purple)
        .clipShape(Circle())
    }
}
