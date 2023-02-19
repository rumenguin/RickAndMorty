//
//  RMEpisodeDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by RUMEN GUIN on 19/02/23.
//

import UIKit

protocol RMEpisodeDetailViewViewModelDelegate: AnyObject {
    func didFetchEpisodeDetails()
}

final class RMEpisodeDetailViewViewModel {
    
    private let endpointUrl: URL?
    
    private var dataTuple: (RMEpisode, [RMCharacter])? {
        didSet {
            delegate?.didFetchEpisodeDetails()
        }
    }
    
    enum SectionType {
        case information(viewModels:  [RMEpisodeInfoCollectionCellViewModel])
        case characters(viewModel: [RMCharacterCollectionViewCellViewModel])
    }
    
    
    public weak var delegate: RMEpisodeDetailViewViewModelDelegate?
    
    //public read / privately we can assign to it inside of this class
    public private(set) var sections: [SectionType] = []
    
    
    //MARK: - Init
    
    init(endpointUrl: URL?) {
        self.endpointUrl = endpointUrl
    
    }
    
    //MARK: - Public
    
    //MARK: - Private
    
    /// Fetch backing episode model
    public func fetchEpisodeData() {
        guard let url = endpointUrl,
              let request = RMRequest(url: url) else {
            return
            
        }
        
        RMService.shared.execute(request, expecting: RMEpisode.self) {[weak self] result in
            switch result {
            case .success(let model):
                self?.fetchRelatedCharacters(episode: model)
            case .failure:
                break
            }
        }
    }
    
    private func fetchRelatedCharacters(episode: RMEpisode) {
        let requests: [RMRequest] = episode.characters.compactMap({
            return URL(string: $0)
        }).compactMap({
            return RMRequest(url: $0)
        })
        
        //10 of parallel requests
        //Notified once all done
        
        let group = DispatchGroup()
        var characters: [RMCharacter] = []
        for request in requests {
            group.enter() //+20
            RMService.shared.execute(request, expecting: RMCharacter.self) { result in
                
                //defer means it is the last thing that is going to run in the scope
                defer {
                    group.leave() //-20
                }
                
                switch result {
                case .success(let model):
                    characters.append(model)
                case .failure:
                    break
                }
            
            }
        }
        group.notify(queue: .main) {
            self.dataTuple = (
                episode, characters
            )
        }
    }
    
    
}
