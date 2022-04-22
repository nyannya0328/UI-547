//
//  MainPage.swift
//  UI-547
//
//  Created by nyannyan0328 on 2022/04/22.
//

import SwiftUI

struct MainPage: View {
    @State var currentTab : String = "Home"
    @State var show : Bool = false
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        ZStack{
         
            SldeView(currentTab: $currentTab)
            
            
            TabCardView(show: $show, currentTab: $currentTab)
                .cornerRadius(show ? 15 : 0)
                .offset(x: show ? getRect().width / 2 : 0)
                .rotation3DEffect(.init(degrees:  show ? -15 : 0), axis: (x: 0, y: 1, z: 0), anchor: .trailing, anchorZ: 1, perspective: 1)
               
            
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
