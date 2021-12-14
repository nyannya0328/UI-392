//
//  SideView.swift
//  UI-392
//
//  Created by nyannyan0328 on 2021/12/14.
//

import SwiftUI

struct SideView: View {
    @Binding var currentTab : String
    @Namespace var animation
    var body: some View {
        VStack{
            
            
            HStack{
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                
                Text("Girls")
                    .font(.title3.bold())
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                
            }
            
            .frame(maxWidth:.infinity,alignment: .leading)
            
            
            ScrollView(getRect().height < 750 ? .vertical : .init(), showsIndicators: false) {
                
                
                
                VStack(alignment:.leading,spacing: 25){
                    
                    TabButton(icon: "house.fill", title: "Home")
                    
                    
                    
                    
                    TabButton(icon: "safari.fill", title: "Discover")
                    
                    TabButton(icon: "applewatch", title: "Devices")
                    
                    TabButton(icon: "person.fill", title: "Profile")
                    
                    TabButton(icon: "gearshape.fill", title: "Settings")
                    
                    TabButton(icon: "info.circle.fill", title: "About")
                    
                    TabButton(icon: "questionmark.circle.fill", title: "Help")
                    
                    Spacer()
                    
                    TabButton(icon: "rectangle.portrait.and.arrow.right", title: "Log Out")
                    
                }
                .padding()
                .padding(.top,50)
                
                
                
                
                
            }
          
            .frame(width: getRect().width / 2)
            .frame(maxWidth:.infinity,alignment: .leading)
            
            
            
            
            
            
        }
        .padding(.leading)
        .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
        .background(Color("BG"))
    }
    
    @ViewBuilder
    func TabButton(icon : String,title : String)->some View{
        Button {
            
            
            if title == "Log Out"{}
            
            else{
                withAnimation{
                    
                    currentTab = title
                }
                
            }
            
        } label: {
            
            
            
            
            HStack{
                
                
                Image(systemName: icon)
                    .font(.title3)
                    .frame(width: currentTab == title ? 50 : nil, height: 50)
                    .foregroundColor(currentTab == title ? Color("Purple") : (title == "Log Out" ? Color("Orange") : .gray))
                    .background(
                    
                        ZStack{
                            
                            
                            
                                if currentTab == title{
                                    
                                    
                                    
                                    Color.white.clipShape(Circle())
                                        .matchedGeometryEffect(id: "TABIMAGE", in: animation)
                                
                                    
                                    
                                }
                        }
                    
                    )
                
                
                Text(title)
                    .font(.title3)
                    .foregroundColor(currentTab == title ? Color.white : (title == "Log Out" ? Color("Orange") : .white))
                   
                    
                    
                    
                
                
                
                
            }
            .padding(.trailing,10)
            .background(
            
            
                
                ZStack{
                    
                    if currentTab == title{
                        
                        Color("Purple").clipShape(Capsule())
                            .matchedGeometryEffect(id: "TABTITLE", in: animation)
                        
                        
                        
                    }
                    
                    
                    
                    
                }
                
                
                )
            
        }

        
        
    }
}

struct SideView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
