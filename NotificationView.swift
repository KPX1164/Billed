//
//  NotificationView.swift
//  Billed
//
//  Created by Copter on 27/9/2565 BE.
//

import SwiftUI

struct NotificationView: View {
    @State var UserName:String = "Hakushin"
    @State var AccountName:[String] = ["Hakushin's account"]
    @State var AccountSpent:[Double] = [12.50]
    @State var accountView = false

    var body: some View {
        VStack {
            HStack {
                Text("Hello,")
                    .font(.title2)
                Text(UserName)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            
           
            ZStack (alignment:.leading){
                           VStack {
                               HStack {
                                   Text("Today")
                                       .font(.title2)
                                       .fontWeight(.semibold)
                                   Spacer()
                                   HStack {
                                       Button(action: {
                                           // What to perform
                                           print("account top")
                                           accountView = true
                                           
                                       }) {
                                           // How the button looks like
                                           Text(self.AccountName[0])
                                           Image(systemName: "chevron.right")
                                       }.fullScreenCover(isPresented: self.$accountView, content: {AccountView()})
                                       
                                   }.foregroundColor(.gray)
                               }
                               .padding(.top, 16)
                               .padding(.trailing, 16)
                               .padding(.leading, 16)
                               HStack(alignment:.top){
                                   Text("$")
                                   Text("\(String(format: "%.2f", AccountSpent[0]))")
                                       .font(.system(size: 37))
                               }
                               .padding(.top,1)
                           
                       }.frame(width: 357, height: 111, alignment: .top)
                           .foregroundColor(.black)
                           .background(Color.white.opacity(0.7))
                       .cornerRadius(7)
                       .padding()
                   }
        }
            .padding()
            .padding(.top, 36)

    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
