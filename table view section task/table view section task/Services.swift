import Foundation

typealias JSONDictionary = [String: Any]

class QueryService {
    let defaultSession = URLSession(configuration: .default)
    var dataTask: URLSessionDataTask?
    var tracks: [vehiclemodel] = []
    var jsondata: String?
    
    func getSearchResults(completionHandler:@escaping (_ tracks:[vehiclemodel])->Void) {
        dataTask?.cancel()
        if var urlComponents = URLComponents(string: "https://qamapp.iaai.com/acserviceswebapi/api/getmakemodel") {
            guard let url = urlComponents.url else {
                return
            }
            dataTask = defaultSession.dataTask(with: url) { [weak self] data, response, error in
                defer {
                    self?.dataTask = nil
                }
                
                if error != nil {
                    print("Something went wrong")
                } else if
                    let data = data,
                    let response = response as? HTTPURLResponse,
                    response.statusCode == 200 {
                    self?.parsejson(apidata: data)
                    self!.jsondata = String(data: data, encoding: .utf8)
                    DispatchQueue.main.async {
                        completionHandler(self!.tracks)
                        
                    }
                }
            }
            dataTask?.resume()
        }
    }
    
    func parsejson(apidata: Data) {
        do {
            let myStructArray = try JSONDecoder().decode([apimodel].self, from: apidata)
            print(myStructArray[0].Make)
            for item in myStructArray {
                let vehicleitem = vehiclemodel(Make: item.Make, Models: item.Models)
                tracks.append(vehicleitem)
            }
        } catch {
            print(error)
        }
    }
}
