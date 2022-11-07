import SwiftUI

struct SideMenuHeaderView: View{
    @Binding var dark : Bool
    @Binding var isShowing : Bool
    var body: some View{
        VStack(){
            
            Button(action: {
                withAnimation(.default){
                    self.isShowing.toggle()
                }
            }){
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width:12, height:20)
            }
            .padding(.top)
            .padding(.bottom, 25)
            
            Image("signup")
                .resizable()
                .scaledToFill()
                .clipped()
                .clipShape(Circle())
                .frame(width:80, height:80)
                .padding(.bottom,16)
            
            VStack(alignment: .leading){
                
                Text("Zhenke Liu")
                    .font(.system(size:24, weight:.semibold))
                
                Text("@zliu365")
                    .font(.system(size:14))
                
                HStack(spacing:12){
                    HStack(spacing:4){
                        Image(systemName:"person.fill")
                        Text("Roommate")
                            .bold()
                        Text("1")
                            .bold()
                    }
                    
                    HStack(spacing:4){
                        Image(systemName: "menucard")
                        Text("Contact")
                            .bold()
                        Text("2")
                            .bold()
                    }
                    Spacer()
                }
                .padding()
            }
            .padding(.top,25)
            
            HStack(spacing: 22){
                Image(systemName:"moon.fill")
                    .font(.title)
                Text("Dark Mode")
                Spacer()
                Button(action: {
                    self.dark.toggle()
                    UIApplication.shared.windows.first?.rootViewController?.view.overrideUserInterfaceStyle = self.dark ? .dark : .light
                }){
                    Image("off")
                        .font(.title)
                        .rotationEffect(.init(degrees:self.dark ? 180 : 0))
                }
            }
            .padding(.top,25)
            
            Divider()
                .padding(.top,25)
            
            Group{
                NavigationLink(destination: QuizScroll()){
                    HStack(spacing:22){
                        Image(systemName: "list.bullet")
                            .resizable()
                            .frame(width:25,height:25)
                            .foregroundColor(.yellow)
                        Text("Quiz")
                        
                        Spacer()
                        
                    }
                }
                .padding(.top,25)
                
                NavigationLink(destination: ProfileView()){
                    HStack(spacing:22){
                        Image(systemName: "person")
                            .resizable()
                            .frame(width:25,height:25)
                            .foregroundColor(.pink)
                        Text("Profile")
                        
                        Spacer()
                    }
                }
                .padding(.top,25)
                
                NavigationLink(destination: SettingView()){
                    HStack(spacing:22){
                        Image(systemName: "pencil")
                            .resizable()
                            .frame(width:25,height:25)
                            .foregroundColor(.purple)
                        Text("Setting")
                        
                        Spacer()
                    }
                }
                .padding(.top,25)
                
                NavigationLink(destination: signInPage()){
                    HStack(spacing:22){
                        Image(systemName: "figure.wave")
                            .resizable()
                            .frame(width:25,height:25)
                            .foregroundColor(.green)
                        Text("Logout")
                        
                        Spacer()
                    }
                }
            }
            
            Spacer()
            
        }
        .foregroundColor(.primary)
        .padding(.horizontal, 20)
        .frame(width:UIScreen.main.bounds.width / 1.5)
        .background((self.dark ? Color.black : Color.white).edgesIgnoringSafeArea(.all))
        .overlay(Rectangle().stroke(Color.primary.opacity(0.2), lineWidth: 2).shadow(radius: 3).edgesIgnoringSafeArea(.all))
    }
}

