//
//  HomePage.swift
//  SwiftUIDemo
//
//  Created by silicn on 2019/10/10.
//  Copyright © 2019 Silicn. All rights reserved.
//

import SwiftUI

struct HomePage: View {
    @State var showAlert = false
    
    var title:String?
    
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("第一区")) {
                    HomeListCell(title: "今天")
                    HomeListCell(title: "明天")
                    HomeListCell(title: "昨天")
                }
                Section(header: Text("第二区")) {
                    HomeListCell(title: "今天")
                    HomeListCell(title: "明天")
                    HomeListCell(title: "昨天")
                }
                
            }
        .listStyle(GroupedListStyle())
        .navigationBarTitle(Text("主页"),displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
                    self.showAlert = true;
            }, label: {Text("点击")})).alert(isPresented: $showAlert) { () -> Alert in
                    Alert(title: Text("温馨提示"), message: Text("你点不点啊"), primaryButton: .destructive(Text("确认")){
                        print("瞎点啥")
                    }, secondaryButton: .cancel(Text("取消")))
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
