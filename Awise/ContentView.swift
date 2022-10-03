//
//  ContentView.swift
//  Awise
//
//  Created by liu zhenke, harry Chen on 10/2/22.
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
          
            
            
            VStack{
                Image("sign")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal,35)
                    .padding(.vertical)
                
                Text("Housing starts with Awise")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .opacity(0.75)
                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 12, content: {
                        
                        
                        Text("Please log in to continue")
                            .foregroundColor(Color.black.opacity(0.5))
                            .fontWeight(.heavy)
                        
                        
                    })
                    
                    Spacer(minLength: 0)
                }
                .padding()
                .padding(.leading,15)
                
                HStack{
                    //account
                    Image(systemName: "person.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 35)
                    
                    TextField("Account", text: $account)
                        .autocapitalization(.none)
                        .fontWeight(.heavy)
                    
                }
                .padding()
                .background(Color.black.opacity(account == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                
                HStack{
                    //password
                    Image(systemName: "lock.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 35)
                    
                    SecureField("PASSWORD", text: $password)
                        .autocapitalization(.none)
                        .fontWeight(.heavy)
                    
                }
                .padding()
                .background(Color.black.opacity(password == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.top)
                HStack{
                    Image(systemName: "globe.asia.australia.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 35)
                    
                    Button(action: {}, label: {
                        NavigationLink(destination: Mainpage()){
                            ZStack{
                                Capsule()
                                    .foregroundColor(.blue.opacity(0.6))
                                    .frame(width:180, height:60)
                                Text("Login")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black.opacity(0.6))
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width - 150)
                                    .background(Color("pink"))
                                    .clipShape(Capsule())
                            }
                        }
                    })
                }
                .padding(.top)

                HStack{
                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 35)
                    Button(action: {}, label: {
                        NavigationLink(destination: ForgetPassword()){
                            ZStack{
                                Capsule()
                                    .foregroundColor(.blue.opacity(0.6))
                                    .frame(width:180, height:60)
                                
                
                                
                                Text("Forget password")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black.opacity(0.6))
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width - 150)
                                    .background(Color("black"))
                            }
                        }
                    })
                    .clipShape(Capsule())
                }
                .padding(.vertical)

                
                HStack{
                    Image(systemName: "person.fill.badge.plus")
                                .font(.title2)
                                .foregroundColor(.black)
                                .frame(width: 35)
                    Button(action: {}, label: {
                        NavigationLink(destination: SignUpPage()){
                            ZStack{
                                Capsule()
                                .foregroundColor(.blue.opacity(0.6))
                                .frame(width:180, height:60)
                                
                                Text("Register")
                                    .clipShape(Capsule())
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black.opacity(0.6))
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width - 150)
                                    .background(Color("pink"))
                            }
                        }
                    })
                   
                    }
                }
                .padding(.top)
                
            }
        }
        
    }
//Sign Up Page
struct SignUpPage: View {
    
    @State var account = ""
    @State var password = ""
    @State var confirmpassword = ""

    var body: some View {
        
        ZStack {

            
            
            VStack{

               
                HStack{
                Image("signup")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal,35)
                      .padding(.vertical)

                    Text("Greetings!")
                        .fontWeight(.heavy)
                        .foregroundColor(.black.opacity(0.6))
                        .background(Color("pink"))
                }
                .padding()
                .background(Color.white.opacity(account == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                

                
                HStack{
                    
                    Image(systemName: "person.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 35)
                    
                    TextField("please enter you account", text: $account)
                        .autocapitalization(.none)
                        .fontWeight(.heavy)

                }
                .padding()
                .background(Color.black.opacity(account == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.bottom)

                
                HStack{
                    
                    Image(systemName: "lock.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 35)
                    
                    SecureField("please enter you password", text: $password)
                        .autocapitalization(.none)
                        .fontWeight(.heavy)

                }
                .padding()
                .background(Color.black.opacity(password == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.bottom)
      
                HStack{
                    
                    Image(systemName: "lock.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 35)
                    
                    SecureField("confirm you password", text: $confirmpassword)
                        .autocapitalization(.none)
                        .fontWeight(.heavy)

                }
                .padding()
                .background(Color.black.opacity(password == "" ? 0 : 0.12))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.bottom)
                
            
                HStack{
                    Image(systemName: "globe.asia.australia.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 35)
                    
                    Button(action: {}, label: {
                        NavigationLink(destination: Mainpage()){
                            ZStack{
                                Capsule()
                                    .foregroundColor(.blue.opacity(0.6))
                                    .frame(width:180, height:60)
                                Text("Start your journey")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black.opacity(0.6))
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width - 150)
                                    .background(Color("pink"))
                                    .clipShape(Capsule())
                            }
                        }
                    })
                }
                .padding(.top)
                HStack{
                    Image(systemName: "house.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 35)
                    
                    Button(action: {}, label: {
                        NavigationLink(destination: Mainpage()){
                            ZStack{
                                Capsule()
                                    .foregroundColor(.blue.opacity(0.6))
                                    .frame(width:180, height:60)
                                Text("Already a member ")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black.opacity(0.6))
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width - 150)
                                    .background(Color("pink"))
                                    .clipShape(Capsule())
                            }
                        }
                    })
                }

                .padding(.vertical)
                
            }
        }
        
    }
}
//Mainpage
struct Mainpage: View {
   
    var body: some View {
        ScrollView {
            VStack {
                
                Section(header: Text("Question")){
                    NavigationLink(destination: Question()) {
                        
                        
                    }

                       
                }
                
                Section(header: Text("Roommate")) {
                        
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
    
    @State var username: String = ""
    
    var body: some View{
        VStack(alignment: .leading) {
                        
            Spacer()
                        
            Text("Reset your password")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom)
                        
            Text("Please enter the email address associated with your account. We’ll send you an email with instructions on how to reset your password.")
                .font(.subheadline)
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)

            Spacer()
                        
            Text("Email")
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
                .font(.headline)
                .padding(.bottom)
                        
            GroupBox() {
                TextField("Enter your email address", text: $username)
            }
            .padding(.bottom)
                        
            Button(action: {}) {
                //send email to 'username' email address
                ZStack{
                    Capsule()
                        .foregroundColor(.blue)
                        .frame(width: 150, height: 50)
                    Text("Send Email")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                }
            }
            Spacer()
        }
        /*.toolbar{
            ToolbarItemGroup(placement: .navigationBarLeading){
                Button(action: {}) {
                    Image(systemName: "arrow.backward")
                }
            }
        }*/
        .padding()
    }
}

    
struct ForgetPassword2: View{
            @State var account = ""
            @State var password = ""
            @State var confirmPassword = ""
            var body: some View {
                ZStack{
                    Rectangle()
                    .fill(Gradient(colors: [.indigo, .pink]))
                    .ignoresSafeArea()
                    VStack {
                        
                        HStack{
                            
                            Image(systemName: "person.fill")
                                .font(.title2)
                                .foregroundColor(.white)
                                .frame(width: 35)
                            
                            TextField("please enter you account", text: $account)
                                .autocapitalization(.none)
                                .fontWeight(.heavy)

                        }
                        
                    }
                }
            }
        }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

