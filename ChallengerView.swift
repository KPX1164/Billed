//
//  ChallengerView.swift
//  Billed
//
//  Created by Copter on 27/9/2565 BE.
//

import SwiftUI

struct ChallengerView: View {
    @Environment(\.presentationMode) var presentation
    var dayOfMonth = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"]
    
    @State private var showImagePicker: Bool = false
    @State private var add: Bool = false

    @State private var sourceType: UIImagePickerController.SourceType = .camera
    
    @State private var image: UIImage?

    
    let currentMonth = Calendar.current.component(.month, from: Date())

    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button(action: {
                    // What to perform
                    print("Close challenge")
                    presentation.wrappedValue.dismiss()

                })
                {
                    Text("Done")
                        .foregroundColor(.blue)
                        .padding()
                }
            }
            VStack{
                //1-5
                HStack{
                    Text("Sep")
//                    Text(String(currentMonth))
                        .foregroundColor(.black)
                        .font(.title2)
                        .fontWeight(.medium)
                    Spacer()
                }.padding()
                //1-5
                HStack{
                    ForEach(0..<5) { number in
                        Button {
                           // flag was tapped
                            print("Challenge request")
                        } label: {
                            Text(dayOfMonth[number])
                                .frame(width: 50,height: 50)
                                .foregroundColor(.black)
                                .background(Color.secondary.opacity(0.5))
                                .cornerRadius(.infinity)
                                .actionSheet(isPresented: $add) {
                                    ActionSheet(title: Text("Add to "+dayOfMonth[number]), message: Text("Choose"), buttons: [
                                        .default(Text("Photo Library")) {
                                            self.showImagePicker = true
                                            self.sourceType = .photoLibrary
                                        },
                                        .default(Text("Camera")) {
                                            self.showImagePicker = true
                                            self.sourceType = .camera
                                        },
                                        .cancel()
                                    ])
                            }
                        }
                    }
                }//6-10
                //6-10
                HStack{
                    ForEach(5..<10) { number in
                        Button {
                           // flag was tapped
                            print("Challenge request")
                        } label: {
                            Text(dayOfMonth[number])
                                .frame(width: 50,height: 50)
                                .foregroundColor(.black)
                                .background(Color.secondary.opacity(0.5))
                                .cornerRadius(.infinity)
                                .actionSheet(isPresented: $add) {
                                    ActionSheet(title: Text("Add to "+dayOfMonth[number]), message: Text("Choose"), buttons: [
                                        .default(Text("Photo Library")) {
                                            self.showImagePicker = true
                                            self.sourceType = .photoLibrary
                                        },
                                        .default(Text("Camera")) {
                                            self.showImagePicker = true
                                            self.sourceType = .camera
                                        },
                                        .cancel()
                                    ])
                            }
                        }
                    }
                }//6-10
                //10-15
                HStack{
                    ForEach(10..<15) { number in
                        Button {
                           // flag was tapped
                            print("Challenge request")
                        } label: {
                            Text(dayOfMonth[number])
                                .frame(width: 50,height: 50)
                                .foregroundColor(.black)
                                .background(Color.secondary.opacity(0.5))
                                .cornerRadius(.infinity)
                                .actionSheet(isPresented: $add) {
                                    ActionSheet(title: Text("Add to "+dayOfMonth[number]), message: Text("Choose"), buttons: [
                                        .default(Text("Photo Library")) {
                                            self.showImagePicker = true
                                            self.sourceType = .photoLibrary
                                        },
                                        .default(Text("Camera")) {
                                            self.showImagePicker = true
                                            self.sourceType = .camera
                                        },
                                        .cancel()
                                    ])
                            }
                        }
                    }
                }
                //16-20
                HStack{
                    ForEach(15..<20) { number in
                        Button {
                           // flag was tapped
                            print("Challenge request")
                        } label: {
                            Text(dayOfMonth[number])
                                .frame(width: 50,height: 50)
                                .foregroundColor(.black)
                                .background(Color.secondary.opacity(0.5))
                                .cornerRadius(.infinity)
                                .actionSheet(isPresented: $add) {
                                    ActionSheet(title: Text("Add to "+dayOfMonth[number]), message: Text("Choose"), buttons: [
                                        .default(Text("Photo Library")) {
                                            self.showImagePicker = true
                                            self.sourceType = .photoLibrary
                                        },
                                        .default(Text("Camera")) {
                                            self.showImagePicker = true
                                            self.sourceType = .camera
                                        },
                                        .cancel()
                                    ])
                            }
                        }
                    }
                }
                //21-25
                HStack{
                    ForEach(20..<25) { number in
                        Button {
                           // flag was tapped
                            print("Challenge request")
                        } label: {
                            Text(dayOfMonth[number])
                                .frame(width: 50,height: 50)
                                .foregroundColor(.black)
                                .background(Color.secondary.opacity(0.5))
                                .cornerRadius(.infinity)
                                .actionSheet(isPresented: $add) {
                                    ActionSheet(title: Text("Add to "+dayOfMonth[number]), message: Text("Choose"), buttons: [
                                        .default(Text("Photo Library")) {
                                            self.showImagePicker = true
                                            self.sourceType = .photoLibrary
                                        },
                                        .default(Text("Camera")) {
                                            self.showImagePicker = true
                                            self.sourceType = .camera
                                        },
                                        .cancel()
                                    ])
                            }
                        }
                    }
                }
                //25-30
                HStack{
                    ForEach(25..<30) { number in
                        Button {
                           // flag was tapped
                            print("Challenge request")
                            add = true
                        } label: {
                            Text(dayOfMonth[number])
                                .frame(width: 50,height: 50)
                                .foregroundColor(.black)
                                .background(Color.white)
                                .cornerRadius(.infinity)
                                .actionSheet(isPresented: $add) {
                                    ActionSheet(title: Text("Add to "+dayOfMonth[number]), message: Text("Choose"), buttons: [
                                        .default(Text("Photo Library")) {
                                            self.showImagePicker = true
                                            self.sourceType = .photoLibrary
                                        },
                                        .default(Text("Camera")) {
                                            self.showImagePicker = true
                                            self.sourceType = .camera
                                        },
                                        .cancel()
                                    ])
                            }
                               
                        }
                    }
                }
            }
            Spacer()
        }.background(Color(.tertiarySystemGroupedBackground))
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
            }

    }
}

struct ChallengerView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengerView()
    }
}
