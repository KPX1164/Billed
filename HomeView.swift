//
//  HomeView.swift
//  Billed
//
//  Created by Copter on 4/9/2565 BE.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack {
                NotificationView()
                Spacer()
                SessionView()
            }
        }.edgesIgnoringSafeArea(.all)
            .background(Image("Mountain")
                .aspectRatio(contentMode: .fill))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
