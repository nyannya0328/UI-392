//
//  MainPage.swift
//  UI-392
//
//  Created by nyannyan0328 on 2021/12/14.
//

import SwiftUI

struct MainPage: View {
    @State var currentTab : String = "Home"
    @State var showSlide : Bool = false
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        ZStack{
            
            
        SideView(currentTab: $currentTab)
            
            
            CustomTabView(currentTab: $currentTab, showSlide: $showSlide)
                .cornerRadius(showSlide ? 20 : 0)
                .rotation3DEffect(.init(degrees: showSlide ? -10 : 0), axis: (x: 0, y: 1, z: 0))
                .offset(x: showSlide ? getRect().width / 2 : 0)
                .ignoresSafeArea()
            
        }
        .preferredColorScheme(.dark)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

extension View{
    
    func getRect()->CGRect{
        
        return UIScreen.main.bounds
    }
    func getSafeArea()->UIEdgeInsets{
        
        guard let scrreen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
            
            return .zero
        }
        
        guard let safeArea = scrreen.windows.first?.safeAreaInsets else{
            
            return .zero
        }
        
        return safeArea
    }
}
