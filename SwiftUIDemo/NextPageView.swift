//
//  NextPageView.swift
//  SwiftUIDemo
//
//  Created by silicn on 2019/10/10.
//  Copyright © 2019 Silicn. All rights reserved.
//

import SwiftUI

struct NextPageView: View {
    var body: some View {
        Text("this is Next Page").navigationBarTitle(Text("详情页"))
    }
}

struct NextPageView_Previews: PreviewProvider {
    static var previews: some View {
        NextPageView()
    }
}
