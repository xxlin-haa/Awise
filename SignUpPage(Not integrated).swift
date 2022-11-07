import SwiftUI
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
