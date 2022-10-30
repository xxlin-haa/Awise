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
                        NavigationLink(destination: HomePageView()){
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
                                    .background(Color("white"))
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
                        //.background(Color("pink"))
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
                        NavigationLink(destination: Quiz1()){
                            ZStack{
                                Capsule()
                                    .foregroundColor(.blue.opacity(0.6))
                                    .frame(width:180, height:60)
                                Text("Start your journey")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black.opacity(0.6))
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width - 150)
                                    //.background(Color("pink"))
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
                        NavigationLink(destination: HomePageView()){
                            ZStack{
                                Capsule()
                                    .foregroundColor(.blue.opacity(0.6))
                                    .frame(width:180, height:60)
                                Text("Already a member ")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black.opacity(0.6))
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width - 150)
                                   // .background(Color("pink"))
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
                                //.foregroundColor(.white)
                                .frame(width: 35)
                            
                            TextField("please enter you account", text: $account)
                                .autocapitalization(.none)
                                .fontWeight(.heavy)

                        }
                        
                    }
                }
            }
        }

struct question{
    
    
    var body: some View {
        ZStack{
            

        }
    }
}



struct HomeView: View{
    let cardGradient = Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.5)])
    var body: some View{
        
        VStack{
            //top stack
            HStack{
                
            }.padding(.horizontal)
            //card View
            ZStack{
                /*ForEach(0..<5){item in
                    CardView().padding(8)
                }*/
                
                ForEach(Card.data.reversed()){card in
                     CardView(card: card).padding(8)
                 }
                 
            }
            //Bottom Stack
            HStack(spacing:0){
                /*Button(action:{}){
                    Image(systemName: "person.fill")
                        .foregroundColor(.black)
                        .frame(width: 40, height: 40)
                }*/
            }
        }
    }
}

struct CardView: View{
    @State var card: Card
    let cardGradient = Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.5)])
    var body: some View{
        ZStack(alignment: .leading){
            Image(card.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:400)
            LinearGradient(gradient: cardGradient,startPoint: .top, endPoint: .bottom)
            VStack{
                
            }
            .padding()
            //.foregroundColor(.white)
            /*HStack{
                Image("h")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:150)
            }*/
            VStack{
                Spacer()
                VStack(alignment: .leading){
                    HStack{
                        //Text("Alice Awise").font(.largeTitle).fontWeight(.bold)
                        Text(card.name).font(.largeTitle).fontWeight(.bold)
                        //Text("Freshman")
                        Text(card.bio)
                    }
                    Text(card.imageName)
                }
            }
            .padding()
            .foregroundColor(.white)
        }
        .cornerRadius(8)
        .offset(x: card.x, y:card.y)
        .rotationEffect(.init(degrees: card.degree))
        .gesture(
            DragGesture()
                
                .onChanged{value in
                    withAnimation(.default){
                        card.x = value.translation.width
                        card.y = value.translation.height
                        card.degree = 7*(value.translation.width > 0 ? 1: -1)
                    }
                }
            
                .onEnded{
                    value in
                    withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50,damping: 8,
                                                       initialVelocity:0)){
                        switch value.translation.width{
                        case 0...100:
                            card.x = 0; card.degree = 0; card.y = 0
                        case let x where x>100:
                            card.x = 500; card.degree = 12
                        case (-100)...(-1):
                            card.x = 0; card.degree = 0; card.y = 0
                        case let x where x < -100:
                            card.x = -500; card.degree = -12
                        default: card.x = 0; card.y = 0
                        }
                    }
                }
        )
    }
}

struct SideMenuView: View{
    @Binding var isShowing: Bool
    var body: some View{
            ZStack(alignment: .leading){
                /*LinearGradient(gradient: Gradient(colors:[Color.pink, Color.indigo]), startPoint: .top, endPoint: .bottom)
                 .ignoresSafeArea()*/
                //call Bar
                VStack{
                    SideMenuHeaderView(isShowing: $isShowing)
                        .frame(height:240)
                    NavigationLink(destination: Quiz1()){
                        ZStack{
                            Capsule()
                                .frame(width:180, height:50)
                                .foregroundColor(.blue.opacity(0.6))
                            HStack(spacing:12){
                                HStack(spacing:4){
                                    Image(systemName: "list.bullet")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                        .frame(width: 35, height: 35)
                                }
                                HStack(spacing:4){
                                    Text("Quiz")
                                        .fontWeight(.heavy)
                                        .foregroundColor(.black)
                                }
                            }
                            
                        }
                    }
                    .padding(.trailing,200)
                    
                    NavigationLink(destination: Profile()){
                        ZStack{
                            Capsule()
                                .frame(width:180, height:50)
                                .foregroundColor(.blue.opacity(0.6))
                            HStack(spacing:12){
                                HStack(spacing:4){
                                    Image(systemName: "person")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                        .frame(width: 35, height: 35)
                                }
                                HStack(spacing:4){
                                    Text("Profile")
                                        .fontWeight(.heavy)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    .padding(.trailing, 200)
                    NavigationLink(destination: SettingView()){
                        ZStack{
                            Capsule()
                                .frame(width:180, height:50)
                                .foregroundColor(.blue.opacity(0.6))
                            HStack(spacing:12){
                                HStack(spacing:4){
                                    Image(systemName: "pencil")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                        .frame(width: 35, height: 35)
                                }
                                HStack(spacing:4){
                                    Text("Setting")
                                        .fontWeight(.heavy)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    .padding(.trailing, 200)
                    NavigationLink(destination: signInPage()){
                        ZStack{
                            Capsule()
                                .frame(width:180, height:50)
                                .foregroundColor(.blue.opacity(0.6))
                            HStack(spacing:12){
                                HStack(spacing:4){
                                    Image(systemName: "figure.wave")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                        .frame(width: 35, height: 35)
                                }
                                HStack(spacing:4){
                                    Text("Logout")
                                        .fontWeight(.heavy)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    .padding(.trailing, 200)
                    /*HStack(spacing:4){
                     Button(action: {}, label: {
                     NavigationLink(destination: Quiz1()){
                     Image(systemName: "person")
                     .frame(width:24, height: 24)
                     Text("Quiz")
                     .fontWeight(.heavy)
                     .foregroundColor(.black.opacity(0.6))
                     .padding(.vertical)
                     .frame(width: UIScreen.main.bounds.width - 150)
                     .background(Color("pink"))
                     .clipShape(Capsule())
                     
                     }
                     },
                     };)*/
                    
                    /*ForEach(SideMenuViewModel.allCases, id: \.self){ option in
                     NavigationLink(
                     destination: Text(option.title),
                     label:{
                     SideMenuOtptionView(viewModel: option)
                     })
                     }*/
                    Spacer()
                }
            }
             .navigationBarHidden(true)
    }
}

/*struct SideMenuOtptionView : View{
    let viewModel: SideMenuViewModel
    var body: some View{
        HStack(spacing:16 ){
            Image(systemName:viewModel.imageName)
                .frame(width:24, height:24)
            Text(viewModel.title)
                .font(.system(size: 15, weight:.semibold))
            
            Spacer()
        }
        .foregroundColor(.black)
        .padding()
    }
}*/

struct HomePageView: View {
    @State private var isShowing = false
    var body: some View{
        //NavigationView{
            ZStack{
                if isShowing{
                    SideMenuView(isShowing: $isShowing)
                }
                    HomeView()
                        .cornerRadius(isShowing ? 20 : 10)
                        .offset(x:isShowing ? 300 : 0, y:isShowing ? 44:0)
                        .scaleEffect(isShowing ? 0.8 : 1)
                        .navigationBarItems(leading:Button(action:{
                            withAnimation(.spring()){
                                isShowing.toggle()
                            }
                        },                 label:{
                            Image(systemName: "list.bullet")
                                .foregroundColor(.black)
                                .padding(.top, 50)
                                .padding(.trailing, 50)

                        }))
                        .navigationTitle("Home")

                }
           // }
    }
}

struct OPTlead{
    var opt = SideMenuViewModel.Quiz
    
    var body: some View{
        switch opt{
        case .profile:
            return Quiz1()
        case .Quiz:
            return Quiz1()
        case .messages:
            return Quiz1()
        case .notificationss:
            return Quiz1()
        case .logout:
            return Quiz1()
        }
    }
}

struct Q: View{
    var body: some View{
        
        Text("Hello World")
        /*Button(action: {}, label: {
            NavigationLink(destination: Quiz1()){
                
                    Text("Login")
                        .fontWeight(.heavy)
                        .foregroundColor(.black.opacity(0.6))
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 150)
                        .background(Color("pink"))
                        .clipShape(Capsule())

            }
        })*/
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
