//
//  AccountView.swift
//  Billed
//
//  Created by Copter on 27/9/2565 BE.
//

import SwiftUI

struct AccountView: View {
    
    @State private var challengerView = false
    @State var addView = false
    @Environment(\.presentationMode) var presentation


    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    // What to perform
//                    homeView = true
                    presentation.wrappedValue.dismiss()

                    
                    
                })
                {
                    // How the button looks like
                    if #available(iOS 16.0, *) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.blue)
                            .font(.system(size: 23))
                            .fontWeight(.medium)
                    } else {
                        // Fallback on earlier versions
                    }
                    Text("Home")
                        .foregroundColor(.blue)
                        .font(.system(size: 17))
                    
                }
//                .fullScreenCover(isPresented: self.$homeView, content: {HomeView()})
                    .padding(.leading,16)
                Spacer()
                //Add
                Button(action: {
                    // What to perform
                    addView = true
                    
                    
                })
                {
                    // How the button looks like
                    if #available(iOS 16.0, *) {
                        HStack {
                            Image(systemName: "plus")
                                .foregroundColor(.blue)
                                .font(.system(size: 23))
                            .fontWeight(.medium)
                        }
                    } else {
                        // Fallback on earlier versions
                    }
                   
                    
                }.padding(.trailing,16)
                .sheet(isPresented: $addView){
                        Billed.AddView()
                        
                    }
                
            }
            
            Button(action: {
                // What to perform
                print("Accessed")
                challengerView = true
                
            }) {
                HStack{
                    // How the button looks like
                    Text("Challenger")
                        .foregroundColor(.black)
                        .padding()
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.secondary)
                        .padding()
                    
                }.frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(7)
                    .padding()
                    .sheet(isPresented: $challengerView){
                        Billed.ChallengerView()
                    }
                
            }
            
            
            
            
            
            
            Spacer()
           Text("Contents")
        }.background(Color(.tertiarySystemGroupedBackground))

    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
