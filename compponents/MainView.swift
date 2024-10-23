import SwiftUI

struct MainView: View {

    var body: some View {
        NavigationView{
            ZStack{
                Color(hex: "ADE2FF")
                    .ignoresSafeArea(.all)
                VStack {
                    Image("title")// insert image
                        .padding(.bottom, -110)
                    
                    //
                    NavigationLink(destination: CarView()) {
                        Text("บริการรถโดยสาร")
                            .font(.system(size: 40))
                            .frame(width: 325,height: 105)
                            .padding()
                            .background(Color(hex: "4F9CE3"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 20)
                    //
                    NavigationLink(destination: BankNoteView()) {
                        Text("ธนบัตรไทย")
                            .font(.system(size: 40))
                            .frame(width: 315,height: 105)
                            .padding()
                            .background(Color(hex: "4F9CE3"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 20)
                    //
                    NavigationLink(destination: ReadThaiView()) {
                        Text("อ่านตัวอักษรภาษาไทย")
                            .font(.system(size: 40))
                            .frame(width: 325,height: 105)
                            .padding()
                            .background(Color(hex: "4F9CE3"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 20)
                    //
                    NavigationLink(destination: ReadEngView()) {
                        Text("อ่านตัวอักษรภาษาอังกฤษ")
                            .font(.system(size: 40))
                            .frame(width: 325,height: 105)
                            .padding()
                            .background(Color(hex: "4F9CE3"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 20)
                    
                }
                .padding(.bottom, 100)
                    
            }
        }
    }
}

#Preview {
    MainView()
}
