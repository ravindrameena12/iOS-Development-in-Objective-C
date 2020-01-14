import Foundation

typealias JSONDictionary = [String: Any]

class QueryService {
    let defaultSession = URLSession(configuration: .default)
    var dataTask: URLSessionDataTask?
    var tracks: [apimodel] = []
    var jsondata: String?
    
    func getSearchResults(completionHandler:@escaping (_ tracks:[apimodel])->Void) {
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
            let response = try JSONSerialization.jsonObject(with: apidata, options: []) as? [Any]
            for item in response! {
                var itemdata = item as! JSONDictionary
                let apimodelobject = apimodel(Make: itemdata["Make"]! as! String, Models: itemdata["Models"] as! [String]).self
                tracks.append(apimodelobject)
            }

        } catch {
            print("eroorr")
        }
    }
}
