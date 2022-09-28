//
//  IncomeView.swift
//  Billed
//
//  Created by Copter on 27/9/2565 BE.
//

import SwiftUI

struct IncomeView: View {
    @State private var complete = false
    var body: some View {
        VStack{
            HStack{
                Text("Category")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
            }.padding(.leading,16)
            ScrollView(.horizontal) {
//                HStack{
                    //Food
//                    Toggle("Food", isOn: $food)
//                        .background(Color.white)
//                        .foregroundColor(.black)
//                        .cornerRadius(7)
//                        .toggleStyle(.button)
//                        .tint(Color.secondary.opacity(0.5))
//
//                    //Drink
//                    Toggle("Drink", isOn: $drink)
//                        .background(Color.white)
//                        .foregroundColor(.black)
//                        .cornerRadius(7)
//                        .toggleStyle(.button)
//                        .tint(Color.secondary.opacity(0.5))
//
//                    //Sweet
//                    Toggle("Sweet", isOn: $sweet)
//                        .background(Color.white)
//                        .foregroundColor(.black)
//                        .cornerRadius(7)
//                        .toggleStyle(.button)
//                        .tint(Color.secondary.opacity(0.5))
//
//                    //Cloth
//                    Toggle("Cloth", isOn: $cloth)
//                        .background(Color.white)
//                        .foregroundColor(.black)
//                        .cornerRadius(7)
//                        .toggleStyle(.button)
//                        .tint(Color.secondary.opacity(0.5))
//
//                    //Transport
//                    Toggle("Transport", isOn: $transport)
//                        .background(Color.white)
//                        .foregroundColor(.black)
//                        .cornerRadius(7)
//                        .toggleStyle(.button)
//                        .tint(Color.secondary.opacity(0.5))
//
//                    //Service
//                    Toggle("Service", isOn: $service)
//                        .background(Color.white)
//                        .foregroundColor(.black)
//                        .cornerRadius(7)
//                        .toggleStyle(.button)
//                        .tint(Color.secondary.opacity(0.5))
//
//                    //Education
//                    Toggle("Education", isOn: $education)
//                        .background(Color.white)
//                        .foregroundColor(.black)
//                        .cornerRadius(7)
//                        .toggleStyle(.button)
//                        .tint(Color.secondary.opacity(0.5))
//
//                    //Mobile
//                    Toggle("Mobile", isOn: $mobile)
//                        .background(Color.white)
//                        .foregroundColor(.black)
//                        .cornerRadius(7)
//                        .toggleStyle(.button)
//                        .tint(Color.secondary.opacity(0.5))
//
//                    //Pet
//                    Toggle("Pet", isOn: $pet)
//                        .background(Color.white)
//                        .foregroundColor(.black)
//                        .cornerRadius(7)
//                        .toggleStyle(.button)
//                        .tint(Color.secondary.opacity(0.5))
//
//                    //Other
//                    Toggle("Other", isOn: $other)
//                        .background(Color.white)
//                        .foregroundColor(.black)
//                        .cornerRadius(7)
//                        .toggleStyle(.button)
//                        .tint(Color.secondary.opacity(0.5))
//                }.padding()//HStack
                Spacer()
                Button(action: {
                    // What to perform
                    print("save!")
                    complete = true
                }) {
                    HStack{
                        Text("Save")
                            .foregroundColor(.black)
                            .padding()
                    }.frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(7)
                        .padding()
                        .alert("Complete", isPresented: $complete) {
                                    Button("OK", role: .cancel) { }
                                }
                }
            }
        }.background(Color(.tertiarySystemGroupedBackground))
    }
}

struct IncomeView_Previews: PreviewProvider {
    static var previews: some View {
        IncomeView()
    }
}
