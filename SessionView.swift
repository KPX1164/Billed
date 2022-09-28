//
//  SessionView.swift
//  Billed
//
//  Created by Copter on 4/9/2565 BE.
//

import SwiftUI

struct SessionView: View {
    @State var settingView: Bool = false
    @State var quickAdd: Bool = false

    @State var accountView = false

    var body: some View {
            
            
            VStack {
                HStack {
                    Text("Account")
                        .font(.title3)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    Button(action: {
                        // What to perform
                        print("Setting Accessed")
                        settingView = true
                        
                    }) {
                        // How the button looks like
                        Image(systemName: "gearshape.fill")
                            .font(.title3)
                            .foregroundColor(.white)
                    }
                    
                    
                    Spacer()
                    
                    Button(action: {
                        // What to perform
                        print("add")
                        quickAdd = true
                        
                    }) {
                        // How the button looks like
                        Text("Quick add")
                            .foregroundColor(.black)
                            .frame(width: 100, height: 37, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(7)
                    }.sheet(isPresented: $quickAdd){
                        Billed.AddView()
                    }
                }.padding(.leading,16)
                    .padding(.trailing,16)
                    .sheet(isPresented: $settingView){
                        Billed.SettingView()
                    }//H
                

                Button(action: {
                    // What to perform
                    print("account")
                    accountView = true
                    
                    
                }) {
                    // How the button looks like
                    Text("Account")
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: 100, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(7)
                        .padding()
                    
                }.fullScreenCover(isPresented: self.$accountView, content: {AccountView()})
                
            }.padding()
                .sheet(isPresented: $settingView){
                    Billed.SettingView()
                    
                }
            
    }
}

struct SessionView_Previews: PreviewProvider {
    static var previews: some View {
        SessionView()
    }
}
