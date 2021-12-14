//
//  CustomTabView.swift
//  UI-392
//
//  Created by nyannyan0328 on 2021/12/14.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var currentTab : String
    @Binding var showSlide : Bool
    var body: some View {
        VStack{
            
            HStack{
                
                
                Button {
                    withAnimation{
                        
                        showSlide = true
                    }
                } label: {
                    
                    
                    Image(systemName: "line.3.horizontal.decrease")
                        .font(.title)
                        .foregroundColor(.white)
                }
                .opacity(showSlide ? 0 : 1)
                
                
                Spacer()
                
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())

                
            }
            .overlay(
            
            Text(currentTab)
                .font(.largeTitle.weight(.black))
            
            )
            .padding([.horizontal,.top])
            .padding(.top,getSafeArea().top)
            
            
            TabView(selection: $currentTab) {
                
                
                Home()
                   .tag("Home")
               
               Text("Discover")
                   .tag("Discover")
               
               Text("Devices")
                   .tag("Devices")
               
               Text("Profile")
                   .tag("Profile")
               
               Text("Settings")
                   .tag("Settings")
                
                Text("Help")
                    .tag("Help")
                
                
            }
            .tabViewStyle(.page)
            
            
            
            
        }
        .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
        .overlay(
        
        
        
            Button(action: {
                withAnimation{
                    
                    showSlide = false
                }
            }, label: {
                
                
                Image(systemName: "xmark")
                    .font(.title)
                    .foregroundColor(.white)
                
                
                
            })
                .padding()
                .padding(.top)
                .opacity(showSlide ? 1 : 0)
            
            ,alignment: .topLeading
        
        )
        .background(Color.black)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
