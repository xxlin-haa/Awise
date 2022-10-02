//
//  ContentView.swift
//  Awise
//
//  Created by liu zhenke on 10/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            signInPage().navigationBarHidden(true)
        }
    }
}




// SignIn Page
struct signInPage: View {
    
    @State var account = ""
    @State var password = ""
    var body: some View {
        
        ZStack {
            Rectangle()
            .fill(Gradient(colors: [.indigo, .pink]))
            .ignoresSafeArea()
            
            
            VStack{
                Image("sign")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal,35)
    //                .padding(.vertical)

                    
                Spacer(minLength: 0)
                HStack{
                    
                    VStack(alignment: .leading, spacing: 12, content: {
                        
                        Text("Login")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Please log in to continue")
                            .foregroundColor(Color.white.opacity(0.5))
                            .fontWeight(.heavy)

                        
                    })
                    
                    Spacer(minLength: 0)
                }
                .padding()
                .padding(.leading,15)
                
                HStack{
                    
                    Image(systemName: "person.fill")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 35)
                    
                    TextField("Account", text: $account)
                        .autocapitalization(.none)
                        .fontWeight(.heavy)

                }
                .padding()
                .background(Color.white.opacity(account == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                
                HStack{
                    
                    Image(systemName: "lock.fill")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 35)
                    
                    SecureField("PASSWORD", text: $password)
                        .autocapitalization(.none)
                        .fontWeight(.heavy)

                }
                .padding()
                .background(Color.white.opacity(password == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.top)
                
                HStack{
                    
                    Button(action: {}, label: {
                        NavigationLink(destination: EventScroll()){
                    Image(systemName: "globe.asia.australia.fill")
                                .font(.title2)
                                .foregroundColor(.white)
                                .frame(width: 35)
                        
                        Text("Login to Main Page")
                            .fontWeight(.heavy)
                            .foregroundColor(.white.opacity(0.6))
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 150)
                            .background(Color("pink"))
                            .clipShape(Capsule())
                        }
                    })
                }
                .padding(.top)

                HStack{
                    
                    Button(action: {}, label: {
                        NavigationLink(destination: ForgetPassword()){
                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                .font(.title2)
                                .foregroundColor(.white)
                                .frame(width: 35)
                        
                        Text("Forget password")
                            .fontWeight(.heavy)
                            .foregroundColor(.white.opacity(0.6))
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 150)
                            .background(Color("pink"))
                            .clipShape(Capsule())
                        }
                    })
                }
                .padding(.top)

                
                HStack{
                    
                    Button(action: {}, label: {
                        NavigationLink(destination: SignUpPage()){
                    Image(systemName: "person.fill.badge.plus")
                                .font(.title2)
                                .foregroundColor(.white)
                                .frame(width: 35)
                        
                        Text("Register")
                            .fontWeight(.heavy)
                            .foregroundColor(.white.opacity(0.6))
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 150)
                            .background(Color("pink"))
                            .clipShape(Capsule())
                        }
                    })
                }
                .padding(.vertical)
                
            }
        }
        
    }
}
struct SignUpPage: View {
    
    @State var account = ""
    @State var password = ""
    @State var confirmpassword = ""

    var body: some View {
        
        ZStack {
            Rectangle()
            .fill(Gradient(colors: [.indigo, .pink]))
            .ignoresSafeArea()
            
            
            VStack{
               
                HStack{
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)

                        

                    Text("Upload your Picture")
                        .fontWeight(.heavy)
                        .foregroundColor(.white.opacity(0.6))
                        .background(Color("pink"))
                }
                .padding()
                .background(Color.white.opacity(account == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                

                
                HStack{
                    
                    Image(systemName: "person.fill")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 35)
                    
                    TextField("please enter you account", text: $account)
                        .autocapitalization(.none)
                        .fontWeight(.heavy)

                }
                .padding()
                .background(Color.white.opacity(account == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.bottom)

                
                HStack{
                    
                    Image(systemName: "lock.fill")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 35)
                    
                    SecureField("please enter you password", text: $password)
                        .autocapitalization(.none)
                        .fontWeight(.heavy)

                }
                .padding()
                .background(Color.white.opacity(password == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.bottom)
      
                HStack{
                    
                    Image(systemName: "lock.fill")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 35)
                    
                    SecureField("confirm you password", text: $confirmpassword)
                        .autocapitalization(.none)
                        .fontWeight(.heavy)

                }
                .padding()
                .background(Color.white.opacity(password == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.bottom)
                
                HStack{
                    
                    Button(action: {}, label: {
                        NavigationLink(destination: EventScroll()){
                    Image(systemName: "globe.asia.australia.fill")
                                .font(.title2)
                                .foregroundColor(.white)
                                .frame(width: 35)
                        
                        Text("Login to Main Page")
                            .fontWeight(.heavy)
                            .foregroundColor(.white.opacity(0.6))
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 150)
                            .background(Color("pink"))
                            .clipShape(Capsule())
                        }
                    })
                }
                .padding(.top)

       
                HStack{
                    
                    Button(action: {}, label: {
                        NavigationLink(destination: signInPage()){
                    Image(systemName: "house.fill")
                                .font(.title2)
                                .foregroundColor(.white)
                                .frame(width: 35)
                        
                        Text("Log In page")
                            .fontWeight(.heavy)
                            .foregroundColor(.white.opacity(0.6))
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 150)
                            .background(Color("pink"))
                            .clipShape(Capsule())
                        }
                    })
                }
                .padding(.vertical)
                
            }
        }
        
    }
}
//Mainpage
struct EventScroll: View {
    var code: Array<Int> = [0]
    var name: Array<String> = ["Spring Festival"]
    var picture: Array<Int> = [0]
    var culture: Array<String> = ["Chinese"]
    var description: Array<String> = ["A fun event"]
    var check_state: Array<Int> = [0]
    var rej_reason: Array<String> = [""]
    var body: some View {
        ScrollView {
            VStack {
                
                Section(header: Text("Chinese")){
                    ForEach(1..<5){index in
                        
                    }
                }
                Section(header: Text("Korean")) {
                    ForEach(1..<5){index in
                        
                    }
                    
                }
                
            }
            
        }
        
    }
}

struct Question: View{
            
            var body: some View {
                ZStack{
                    
                    
                    
                    VStack {
                        
                        
                    }
                }
            }
}

struct Profile: View{
            
            var body: some View {
                ZStack{
                    
                    
                    
                    VStack {
                        
                        
                    }
                }
            }
}
        
        
struct ForgetPassword: View{
            @State var account = ""
            @State var password = ""
            @State var confirmPassword = ""
            var body: some View {
                ZStack{
                    
                    
                    
                    VStack {
                        
                        
                    }
                }
            }
        }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

