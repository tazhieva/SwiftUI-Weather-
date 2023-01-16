import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight)
            VStack{
                CityNameView(cityName: "Almaty, KZ")
                MainWeatherStutusView(weatherImage: isNight ?  "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 7)
                
                .padding(.bottom, 40)
             
                HStack(spacing: 20){
                    WeatherOfWeekDays(dayOfWeek: "TUE",
                                      weatherImage: "cloud.heavyrain.fill",
                                      temperature: 20)
                    
                    WeatherOfWeekDays(dayOfWeek: "WED",
                                      weatherImage: "cloud.sleet.fill",
                                      temperature: 12)
                    
                    WeatherOfWeekDays(dayOfWeek: "THU",
                                      weatherImage: "sun.max.fill",
                                      temperature: 24)
                    
                    WeatherOfWeekDays(dayOfWeek: "FRI",
                                      weatherImage: "cloud.fill",
                                      temperature: 15)
                    
                    WeatherOfWeekDays(dayOfWeek: "SAT",
                                      weatherImage: "cloud.sun.fill",
                                      temperature: 20)
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                    
                }label: {
                    ButtonWeather(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                Spacer()
                
                
            }
            
            
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherOfWeekDays: View {
    var dayOfWeek: String
    var weatherImage: String
    var temperature: Int
    
    var body: some View {
        VStack(alignment: .center ){
            
            Text(dayOfWeek)
                .font(.system(size:23, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: weatherImage)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temperature)°")
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.white)
            
            
        }
    }
}

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors:[ isNight ? .black : .blue,
                                                   isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityNameView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStutusView: View {
    var weatherImage: String
    var temperature: Int
    var body: some View{
        VStack(spacing: 10){
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
                
            
        }
    }
}


