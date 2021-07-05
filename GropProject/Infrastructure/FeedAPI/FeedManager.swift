import Foundation

protocol FeedManagerProtocol: AnyObject {
    func fetchNews(completion: @escaping ((FeedModel) -> Void))
}

class FeedManager: FeedManagerProtocol {
    
    func fetchNews(completion: @escaping ((FeedModel) -> Void)) {
        let url = "https://run.mocky.io/v3/ab4f4c60-daf3-4e43-8148-8065d1178315"
        NetworkManager.shared.get(url: url) { (result: Result<FeedModel, Error>) in
            switch result {
            case .success(let feed):
                completion(feed)
            case .failure(let error):
                print(error)
            }
        }
    }
}
