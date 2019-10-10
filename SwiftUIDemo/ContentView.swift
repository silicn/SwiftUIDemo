//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by silicn on 2019/10/10.
//  Copyright © 2019 Silicn. All rights reserved.
//

import SwiftUI

struct TabBarItem:View {
    var iconName:String
    var title:String
    
    var  body:some View{
        VStack{
            Image(self.iconName)
            Text(self.title).font(.subheadline)
        }
    }
}

struct ContentView: View {
    
    var body: some View{
        TabView{
            HomePage().tabItem({
                TabBarItem(iconName: "tab_1", title: "主页")
            })
            
            OrderPage().tabItem({
                TabBarItem(iconName: "tab_2", title: "账单")
            })
            
            ManagerPage().tabItem({
                TabBarItem(iconName: "tab_3", title: "管理")
            })
            
            MinePage().tabItem({
                TabBarItem(iconName: "tab_4", title: "我")
            })
        }
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.dark)
    }
}
#endif


