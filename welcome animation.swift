struct Launchscreen_View: View {
    
    @State private var animationState: AnimationState = .normal
    @State private var done: Bool = false
    func calculate()->Double{
        switch animationState{
        case .normal:
            return 0.2
        case .compress:
            return 0.18
        case .expand:
            return 2
        }
    }
    var body: some View{
        ZStack{
            Button(action: {}, label: {
            NavigationLink(destination: signInPage()){
                ZStack{
                    Text("Tap to continue")
                        .fontWeight(.heavy)
                        .foregroundColor(.black.opacity(0.6))
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 150)
                        .background(Color("black"))
                }
            }
        })
            
            VStack{
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(calculate())
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.white)
                .opacity(done ? 0:1)
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation(.spring()){
                    animationState = .compress
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                        withAnimation(.spring()){
                            animationState = .expand
                            withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping:10.0, initialVelocity: 0)){
                                done = true
                            }
                        }
                    }
                }
            }
        }
    }
}

struct launchscreen_Previews: PreviewProvider {
     static var previews: some View {
         Launchscreen_View()
    }
}
