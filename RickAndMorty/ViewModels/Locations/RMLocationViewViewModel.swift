//
//  RMLocationViewViewModel.swift
//  RickAndMorty
//
//  Created by RUMEN GUIN on 19/02/23.
//

import Foundation

protocol RMLocationViewViewModelDelegate: AnyObject {
    func didFetchInitialLocations()
}

final class RMLocationViewViewModel {
    
    weak var delegate: RMLocationViewViewModelDelegate?
    
    private var locations: [RMLocation] = [] {
        didSet {
            for location in locations {
                let cellViewModel = RMLocationTableViewCellViewModel(location: location)
                if !cellViewModels.contains(cellViewModel) {
                    cellViewModels.append(cellViewModel)
                }
            }
        }
    }
    
    //Location response info
    //will contain next url, if present
    private var apiInfo: RMGetAllLocationsResponse.Info?
    
    //only this class has the authority to assign to it
    public private(set) var cellViewModels: [RMLocationTableViewCellViewModel] = []
    
    init() {
        
    }
    
    public func location(at index: Int) -> RMLocation? {
        guard index >= locations.count else {return nil}
        return self.locations[index]
    }
    
    public func fetchLocations() {
        RMService.shared.execute(.listLocationsRequests, expecting: RMGetAllLocationsResponse.self) {[weak self] result in
            switch result {
            case .success(let model):
                self?.apiInfo = model.info
                self?.locations = model.results
                DispatchQueue.main.async {
                    self?.delegate?.didFetchInitialLocations()
                }
            case .failure(let error):
                break
            }
        }
    }
    
    private var hasMoreResults: Bool {
        return false
    }
}
