//
//  CustomTabBar.swift
//  CustomTabBarWithAnimation
//
//  Created by Arnaldo Baumanis on 5/18/25.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var tabSelection: Int
    
    var animation: Namespace.ID
    
    var body: some View {
        let iconH: CGFloat = 60
        
        ZStack {
            Rectangle()
                .foregroundStyle(.black)
            
            HStack(spacing: 0.0) {
                ForEach(0..<TabModel.allCases.count, id: \.self) { index in
                    let tab = TabModel.allCases[index]
                    let isCurrent = tabSelection == index + 1
                    
                    Button {
                        withAnimation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                            tabSelection = index + 1
                        }
                    } label: {
                        VStack(spacing: 2) {
                            Image(systemName: tab.systemImageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .aspectRatio(isCurrent ? 0.5 : 0.7, contentMode: .fit)
                                .frame(
                                    width: isCurrent ? iconH : 35,
                                    height: isCurrent ? iconH : 35
                                )
                                .foregroundStyle(
                                    isCurrent ? .white : .gray
                                )
                                .background {
                                    if isCurrent {
                                        Circle()
                                            .fill(.blue.gradient)
                                            .matchedGeometryEffect(id: "CircleAnimation", in: animation)
                                    }
                                }
                                .offset(y: isCurrent ? -iconH / 2 : 0)
                            
                            if !isCurrent {
                                Text(tab.rawValue)
                                    .font(.caption)
                                    .fontDesign(.rounded)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(
                            isCurrent ? .white : .gray
                        )
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .frame(maxHeight: 80)
        .background(.cyan)
    }
}

#Preview {
    //CustomTabBar()
}
