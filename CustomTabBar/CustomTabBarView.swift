//
//  CustomTabBarView.swift
//
//  Created by Naufal Adli on 13/02/24.
//

import SwiftUI

struct CustomTabBarView: View {
    @Binding var selectedTab : Tab
    // binding property for the selected tab
    var body: some View {
        HStack{
            ForEach(Tab.allCases, id: \.rawValue){tab in
                Button{
                    withAnimation(.bouncy()){
                        selectedTab = tab // keeps track as to which tab is selected
                    }
                } label: {
                    Image(systemName: tab.rawValue)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(selectedTab == tab ? .blue : .gray)
                        .fontWeight(selectedTab == tab ? .bold : .regular)
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width - 20, height: 60)
        .background(Color.cyan.opacity(0.3), in: RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    CustomTabBarView(selectedTab: .constant(.home))
}
