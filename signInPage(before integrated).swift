import SwiftUI

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
