//
//  SldeView.swift
//  UI-547
//
//  Created by nyannyan0328 on 2022/04/22.
//

import SwiftUI

struct SldeView: View {
    @Binding var currentTab : String
    @Namespace var animation
    var body: some View {
        VStack{
            
            HStack{
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                
                Text("Girls")
                    .font(.title.weight(.bold))
            }
            .lLeading()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                VStack(alignment: .leading, spacing: 15) {
                    
                    TabCardView(icon: "theatermasks.fill", title: "Home")
                    
                    
                    TabCardView(icon: "safari.fill", title: "Discover")
                    
                    TabCardView(icon: "applewatch", title: "Devices")
                    
                    TabCardView(icon: "person.fill", title: "Profile")
                    
                    TabCardView(icon: "gearshape.fill", title: "Settings")
                    
                    TabCardView(icon: "info.circle.fill", title: "About")
                    
                    TabCardView(icon: "questionmark.circle.fill", title: "Help")
                    
                    Spacer()
                    
                    TabCardView(icon: "rectangle.portrait.and.arrow.right", title: "Log Out")
                    
                    
                }
                
            }
            .frame(width: getRect().width / 2,alignment: .leading)
            .lLeading()
            
            
            
        }
        .maxTop()
    }
    @ViewBuilder
    func TabCardView(icon : String,title : String)-> some View{
        
        Button {
            
            if title == "Log Out"{}
            
            else{
                
                withAnimation{currentTab = title}
            }
        } label: {
            
            HStack(spacing:10){
                
                Image(systemName: icon)
                    .font(.title)
                    .frame(width: currentTab == title ? 50 : nil, height: 50)
                    .foregroundColor(currentTab == title ? Color("Purple") : title == "Log Out" ? Color("Orange") : .white)
                    .background{
                        
                        if currentTab == title{
                            
                            
                            Color.white.clipShape(Circle())
                                .matchedGeometryEffect(id: "TABCIRCLE", in: animation)
                        }
                    }
                
                Text(title)
                    .font(.callout.weight(.semibold))
                    .frame(width: 80)
                    .foregroundColor(title == "Log Out" ? Color("Orange") : .white)
            }
            .background{
                
                if currentTab == title{
                    
                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                        .fill(Color("Purple"))
                        .matchedGeometryEffect(id: "TABBG", in: animation)
                        
                    
                }
            }
            .lLeading()
            .padding(.leading,20)
            
        }

        
        
        
    }
}

struct SldeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
