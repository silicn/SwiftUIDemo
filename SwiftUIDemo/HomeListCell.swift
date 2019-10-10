//
//  HomeListCell.swift
//  SwiftUIDemo
//
//  Created by silicn on 2019/10/10.
//  Copyright © 2019 Silicn. All rights reserved.
//

import SwiftUI

struct HomeListCell: View {
    var title:String
    init(title:String){
        self.title = title;
    }
    
    var body: some View {
        
        NavigationLink(destination: NextPageView()){
            VStack(alignment: .leading){
                Text(self.title).font(.title)
                Text(self.title + "做了什么?").font(.headline).foregroundColor(.blue)
            }
        }
    }
}

struct HomeListCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeListCell(title: "Cell")
    }
}
