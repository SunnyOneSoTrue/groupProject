import Foundation

protocol WelcomeManagerProtocol: AnyObject {
    func fetchNews(completion: @escaping (([WelcomeModel]) -> Void))
}

class WelcomeManager: WelcomeManagerProtocol {
    
    func fetchNews(completion: @escaping (([WelcomeModel]) -> Void)) {
        let url = "https://run.mocky.io/v3/3c597760-1ebc-4136-a10f-d285c3343efb"
        NetworkManager.shared.get(url: url) { (result: Result<[WelcomeModel], Error>) in
            switch result {
            case .success(let welcome):
                completion(welcome)
            case .failure(let error):
                print(error)
            }
        }
    }
}
