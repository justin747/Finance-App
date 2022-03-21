//
//  Home.swift
//  Finance App
//
//  Created by Justin747 on 3/10/22.
//

import SwiftUI

struct Home: View {
    
    //MARK: Animation Properties
    @State var animatedStates: [Bool] = Array(repeating: false, count: 3)
    
    //MARK: Hero Effect
    @Namespace var animation
    
    @State var currentDate: Date = Date()
    
    var body: some View {
        ZStack{
            
            if !animatedStates[1] {
            RoundedRectangle(cornerRadius: animatedStates[0] ? 30 : 0, style: .continuous)
                .fill(Color("Purple"))
                .matchedGeometryEffect(id: "DATEVIEW", in: animation)
                .ignoresSafeArea()
            }
            
            if animatedStates[0] {
                //MARK: Home View
                
                VStack(spacing: 0) {
                    CustomDatePicker(currentDate: <#T##Binding<Date>#>, currentMonth: <#T##Int#>)
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(Color("Purple"))
                        .matchedGeometryEffect(id: "DATEVIEW", in: animation)
                        .frame(height: 290)
                }
                .padding([.horizontal, .top])
            }
        }
        .onAppear(perform: startAnimation)
    
    }
    
    //MARK: Animating View
    func startAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            withAnimation(.interactiveSpring(response: 0.8, dampingFraction: 0.7, blendDuration: 0.7)) {
                animatedStates[0] = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                animatedStates[1] = true
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
