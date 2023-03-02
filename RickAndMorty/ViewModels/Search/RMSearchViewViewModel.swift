//
//  RMSearchViewViewModel.swift
//  RickAndMorty
//
//  Created by RUMEN GUIN on 20/02/23.
//

import Foundation

//Responsibilities
// - show search results
// - show no results view
// - kick off API requests

final class RMSearchViewViewModel {
    
    let config: RMSearchViewController.Config
    
    private var optionMap: [RMSearchInputViewViewModel.DynamicOption: String] = [:]
    
    private var searchText = ""
    
    private var optionMapUpdateBlock: (((RMSearchInputViewViewModel.DynamicOption, String)) -> () )?
    
    private var searchResultHandler: (() -> Void)?
    
    //MARK: - Init
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
    
    //MARK: - Public
    
    public func registerSearchResultHandler(_ block: @escaping () -> Void ) {
        self.searchResultHandler = block
    }
    
    public func executeSearch() {
        //create request based on filters
        //https://rickandmortyapi.com/api/character/?name=rick&status=alive
        
        print("Search Text: \(searchText)")
        //Build arguments
        var queryParams: [URLQueryItem] = [
            URLQueryItem(name: "name", value: searchText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed))
        ]
        
        //add options
        queryParams.append(contentsOf: optionMap.enumerated().compactMap({ _, element in
            
            let key: RMSearchInputViewViewModel.DynamicOption = element.key
            let value: String = element.value
            
            return URLQueryItem(name: key.queryArgument, value: value)
            
        }))
        
        //create request
        let request = RMRequest(
            endpoint: config.type.endpoint,
            queryParameters: queryParams)
        
        print(request.url?.absoluteURL)
        
        RMService.shared.execute(request, expecting: RMGetAllCharactersResponse.self) { result in
            //notify view of results, no results, or error
            switch result {
            case .success(let model):
                print("Search result found \(model.results.count)")
            case .failure:
                break
            }
            
        }
        
        
        
    }
    
    public func set(query text: String) {
        self.searchText = text
    }
    
    public func set(value: String, for option: RMSearchInputViewViewModel.DynamicOption) {
        optionMap[option] = value
        let tuple = (option, value)
        optionMapUpdateBlock?(tuple)
    }
    
    public func registerOptionChangeBlock(_ block: @escaping ((RMSearchInputViewViewModel.DynamicOption, String)) -> () ) {
        self.optionMapUpdateBlock = block
    }
    
}
