//
//  LoginView.swift
//  CostumRegistration
//
//  Created by Abdoulaye Aliou SALL on 20/01/2023.
//

import SwiftUI


struct LoginView: View {
    
    @State private var email : String = ""
    @State private var password : String = ""
    @State var isLinkActive = false
    var body: some View {
        NavigationView() {
            ZStack (alignment: .topLeading){
                VStack {
                    VStack (spacing: 40){
                        ZStack {
                            Ellipse()
                                .frame(width: 510, height: 478)
                                .padding(.leading, -200)
                                .foregroundColor(Color("Color2"))
                                .padding(.top, -200)
                            Ellipse()
                                .frame(width: 458, height: 420)
                                .padding(.trailing, -500)
                                .foregroundColor(Color("Color1"))
                                .padding(.top, -200)
                            Text("welcome \nBack")
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 20)
                        }
                        
                        VStack(spacing: 30){
                            
                            VStack(spacing: 30){
                                CustomTextField(placeHolder: "Email", imageName: "envelope", bColor: "TextColor1", tOpacity: 0.6, value: $email)
                                CustomTextField(placeHolder: "Password", imageName: "lock", bColor: "TextColor1", tOpacity: 0.6, value: $password)
                        
                            }
                            VStack(alignment:.trailing){
                                Text("forget Password")
                                    .fontWeight(.medium)
                                    Button(action: {}, label: {
                                        CustomButton(title: "SIGN IN", bgColor: "Color1")
                                    })
                                
                            }.padding(.horizontal, 20)
                            
                            HStack{
                                Button(action: {}, label: {
                                    Image("fb")
                                        .resizable()
                                        .frame(width: 30 , height: 30)
                                        .padding(.horizontal, 60)
                                        .padding(.vertical, 15)
                                        .background(Color("button-bg"))
                                        .cornerRadius(15)
                                })
                                Spacer()
                                Button(action: {}, label: {
                                    Image("google")
                                        .resizable()
                                        .frame(width: 30 , height: 30)
                                        .padding(.horizontal, 60)
                                        .padding(.vertical, 15)
                                        .background(Color("button-bg"))
                                        .cornerRadius(15)
                                })
                                
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    Spacer()
                    
                    HStack{
                        Text("Don't have a account")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                        NavigationLink(destination: SignUpView(), isActive: $isLinkActive){
                            Button(action: {
                                self.isLinkActive = true
                            }, label: {
                                Text("SIGN UP")
                                    .font(.system(size: 18))
                                    .foregroundColor(Color("Color1"))
                                    .fontWeight(.bold)
                            })
                        }
                    }
                    .frame(height: 63)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color("Color2"))
                    .ignoresSafeArea()
                }
                TopBarView()
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        .navigationBarHidden(true)
        }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
