//
//  TabCardView.swift
//  UI-547
//
//  Created by nyannyan0328 on 2022/04/22.
//

import SwiftUI

struct TabCardView: View {
    @Binding var show : Bool
    @Binding var currentTab : String
    var body: some View {
        VStack{
            
            HStack{
                
                Button {
                    withAnimation{
                        
                        show = true
                    }
                    
                } label: {
                    
                    Image(systemName: "line.3.horizontal")
                        .font(.title)
                        .foregroundColor(.white)
                        .opacity(show ? 0 : 1)
                }
                
                Spacer()
                
                
               Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())

                
                
            }
            .padding()
            
            TabView(selection: $currentTab) {
                
                
                Home()
                   .tag("Home")
               
              Home2()
                   .tag("Discover")
               
              Home3()
                   .tag("Devices")
               Home4()
             
                   .tag("Profile")
               
              Home5()
                   .tag("Settings")
                
                Home6()
                     .tag("About")
                
                Home7()
                     .tag("Help")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
      
            
            
            
            
            
        }
        .maxTop()
        .overlay(alignment: .topLeading, content: {
            Button {
                withAnimation{
                    
                    show = false
                }
                
            } label: {
                
                Image(systemName: "xmark")
                    .font(.title)
                    .opacity(show ? 1 : 0)
                    .foregroundColor(.white)
            }
            .padding()
            
            
            
        })
        .background(.black)
    }
}

struct TabCardView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
