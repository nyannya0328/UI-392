//
//  Home.swift
//  UI-392
//
//  Created by nyannyan0328 on 2021/12/14.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 10, height: 300)
                    .cornerRadius(10)
                
                
                Text("Swift Ui")
                    .font(.caption.weight(.semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
            }
            .padding()
            
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
