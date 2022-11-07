//
//  quizscroll.swift
//  Awise
//
//  Created by liu zhenke on 11/2/22.
//

import SwiftUI
import Foundation

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
    
}

struct QuizScroll: View {
    var body: some View {
        ScrollView{
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz1()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 1")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                Divider()
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz2()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 2")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz3()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 3")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz4()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 4")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz5()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 5")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz6()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 6")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz7()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 7")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz8()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 8")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
            NavigationLink(destination: QuizScroll2()){
                HStack{
                    Image(systemName: "arrowshape.turn.up.right.fill")
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.black)

                        .frame(width:25,height:25)
                        Text("next page")
                            .foregroundColor(.black)
                }
            }
                        }
        
    }
}

struct QuizScroll2: View{
    var body: some View {
        ScrollView{
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz9()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 9")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                Divider()
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz10()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 10")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz11()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 11")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz12()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 12")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz13()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 13")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz14()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 14")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz15()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 15")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                
            ZStack(alignment: .center) {
                Button(action: {}, label: {
                    NavigationLink(destination: Quiz16()){
                        Image("sign")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .padding(.all, 20)
                        
                        VStack(alignment: .leading) {
                            Text("Problem 16")
                                .font(.system(size: 26, weight: .bold, design: .default))
                                .foregroundColor(.white)
                        }.padding(.trailing, 20)
                        Spacer()
                    }
                })
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                .modifier(CardModifier())
                .padding(.all, 10)
            }

            
                NavigationLink(destination: QuizScroll3()){
                    HStack{
                        Image(systemName: "arrowshape.turn.up.right.fill")
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)

                            .frame(width:25,height:25)
                            Text("next page")
                                .foregroundColor(.black)
                    }
            }
                    
                }
            }
                        }
    
    struct QuizScroll3: View{
        var body: some View {
            ScrollView{
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz17()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 17")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                Divider()
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz18()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 18")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                ZStack(alignment: .center) {
                    Button(action: {}, label: {
                        NavigationLink(destination: Quiz19()){
                            Image("sign")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding(.all, 20)
                            
                            VStack(alignment: .leading) {
                                Text("Problem 19")
                                    .font(.system(size: 26, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }.padding(.trailing, 20)
                            Spacer()
                        }
                    })
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(red: 80/255, green: 90/255, blue: 170/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
                NavigationLink(destination: QuizScroll2()){
                    HStack{
                        Image(systemName: "arrowshape.turn.up.left.fill")
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)

                            .frame(width:25,height:25)
                            Text("previous page")
                                .foregroundColor(.black)
                    }
            }
            }
        }
            }

            
struct QuizScroll_Previews: PreviewProvider {
     static var previews: some View {
         QuizScroll()
    }
}
