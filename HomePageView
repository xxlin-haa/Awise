import SwiftUI

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
                    .toolbar{
                        ToolbarItemGroup(placement:.navigationBarTrailing){
                            Button(action:{
                                withAnimation(.spring()){
                                    isShowing.toggle()
                            
                                }
                            },
                                           label:{
                                Image(systemName: "line.3.horizontal")
                                    .foregroundColor(.black)
                                    .padding(.trailing)
                                    .frame(width: 10.0, height: 10.0)
                                               
                                           })
                        }
                    }
                    .navigationTitle("Roommate")
            }
    }
}
