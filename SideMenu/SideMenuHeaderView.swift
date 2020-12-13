//
//  SideMenuHeaderView.swift
//  SideMenu
//
//  Created by Илья Селиванов  on 13.12.2020.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button(action: {
                withAnimation(.spring()) {
                isShowing.toggle()
            }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack(alignment: .leading) {
                Image("ilya_selivanov")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("Ilya Selivanov")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@Silya")
                    .font(.system(size: 14))
                    .padding(.bottom, 24)
                
                HStack(spacing: 12) {
                    HStack(spacing: 4) {
                        Text("1,323").bold()
                        Text("Following")
                    }
                    
                    HStack(spacing: 4) {
                        Text("1,000").bold()
                        Text("Followers")
                    }
                Spacer()
                 }
                Spacer()
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
