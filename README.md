# Rick and Morty App

## Full featured Universal App (iOS, iPadOS, macOS) showcasing the Rick and Morty API

## Overview

- Written in Swift
- Uses both UIKit and SwiftUI
- Designed with MVVM pattern
- No External Dependencies
- Pagination Support for data
- Auto layout Based
- Universal App: Run on iPhone, iPad, and Mac
- Leverages Free [Rick and Morty API](https://rickandmortyapi.com) to fetch all data.
-  The app showcases characters, episodes and locations of The Rick and Morty series.

![Alt text](RM/v2/coverphoto.png)


## Characters Tab

- There is a total of 826 characters.

### Show all characters

- You can access the [list of characters](https://rickandmortyapi.com/api/character).

![Alt text](RM/v2/Charactersv2/chartab.png)

- List of all characters from the API is shown in a UICollectionViewFlowLayout.

### Show a single character  

- You can get [a single character by adding the id as parameter](https://rickandmortyapi.com/api/character/2).

![Alt text](RM/v2/Charactersv2/chardetail1.png)

- When you tap a character cell, you will get all details about a single character offered by the API.

![Alt text](RM/v2/Charactersv2/chardetail2.png)

- Leveraged UICompositionalLayout where each section is composed of groups of individual items. 

- It contains 3 sections that shows single character image, character details and the number of episodes in which the character appeared.

### Filter Characters

- You can also search for characters, just tap on the search icon in right navigation bar.

- For example, If you want to check [how many alive Ricks exist](https://rickandmortyapi.com/api/character/?name=rick&status=alive).

![Alt text](RM/v2/Charactersv2/charsearch.png)

- You can search any character by name, status, gender.


## Locations Tab

- There is a total of 126 locations.

### Show all locations

- You can access the [list of locations](https://rickandmortyapi.com/api/location).

![Alt text](RM/v2/Locationsv2/loctab.png)

- List of all locations from the API is shown in a UITableView.

### Show a single location

- You can get [a single location by adding the id as parameter](https://rickandmortyapi.com/api/location/3).

![Alt text](RM/v2/Locationsv2/locdetails.png)

- Used UICollectionView to show each location details and show list of all characters from that location in a grid view.

### Filter locations

- You can also search for locations, just tap on the search icon in right navigation bar.

![Alt text](RM/v2/Locationsv2/locsearch.png)

- You can search any location by name, type.


## Episodes Tab

- There is a total of 51 episodes.

### Show all episodes

- You can access the [list of episodes](https://rickandmortyapi.com/api/episode).

![Alt text](RM/v2/Episodesv2/epitab.png)

- List of all episodes from the API is shown in a UICollectionViewFlowLayout.

### Show a single episode

- You can get [a single episode by adding the id as parameter](https://rickandmortyapi.com/api/episode/28).

![Alt text](RM/v2/Episodesv2/episdetails.png)

- Used UICollectionView to show each episode details and show list of all characters that appeared in that episode in a grid view.

### Filter episodes

- You can also search for episodes, just tap on the search icon in right navigation bar.

![Alt text](RM/v2/Episodesv2/episdetails.png)

- You can search any episode by name.


# Note:

- Unit and UI Testing is coming soon