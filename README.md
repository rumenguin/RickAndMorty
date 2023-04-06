# Rick and Morty iOS App

![Alt text](RM/1024.png)

## Full featured iOS app showcasing the Rick and Morty API

- Used Swift 5, UIKit, SwiftUI.

-  Used The Rick and Morty API (https://rickandmortyapi.com) to fetch all data.

-  The app showcases characters, episodes and locations of The Rick and Morty series.

- The API automatically paginate the responses. You will receive up to 20 documents per page.

- Optimized for both iPhone and iPad in both light and dark mode.


## Characters Tab

- There is a total of 826 characters.

### Show all characters

- You can access the list of characters using (https://rickandmortyapi.com/api/character).

![Alt text](RM/Characters/character1.png)

- List of all characters from the API is shown in a UICollectionView (Grid View).

### Show a single character  

- You can get a single character by adding the id as parameter (https://rickandmortyapi.com/api/character/2).

![Alt text](RM/Characters/charTap1.png)

- When you tap a character cell, you will get all details about a single character offered by the API.

![Alt text](RM/Characters/charTap2.png)

- Leveraged UICompositionalLayout where each section is composed of groups of individual items. 

- It contains 3 sections that shows single character image, character details and the number of episodes in which the character appeared.

### Filter Characters

- You can also search for characters, just tap on the search icon in right navigation bar.

- For example, If you want to check how many alive Ricks exist, (https://rickandmortyapi.com/api/character/?name=rick&status=alive).

![Alt text](RM/Characters/searchchar.png)

- You can search any character by name, status, gender.


## Locations Tab

- There is a total of 126 locations.

### Show all locations

- You can access the list of locations using (https://rickandmortyapi.com/api/location).

![Alt text](RM/Locations/loctab.png)

- List of all locations from the API is shown in a UITableView.

### Show a single location

- You can get a single location by adding the id as parameter (https://rickandmortyapi.com/api/location/3).

![Alt text](RM/Locations/locdetails.png)

- Used UICollectionView to show each location details and show list of all characters from that location in a grid view.

### Filter locations

- You can also search for locations, just tap on the search icon in right navigation bar.

![Alt text](RM/Locations/locsearch.png)

- You can search any location by name, type.


## Episodes Tab

- There is a total of 51 episodes.

### Show all episodes

- You can access the list of episodes using (https://rickandmortyapi.com/api/episode).

![Alt text](RM/Episodes/epitab.png)

- List of all episodes from the API is shown in a UITableView.

### Show a single episode

- You can get a single episode by adding the id as parameter (https://rickandmortyapi.com/api/episode/28).

![Alt text](RM/Episodes/epidetails.png)

- Used UICollectionView to show each episode details and show list of all characters that appeared in that episode in a grid view.

### Filter episodes

- You can also search for episodes, just tap on the search icon in right navigation bar.

![Alt text](RM/Episodes/episearch.png)

- You can search any episode by name.


# Note:

- There are still bugs and crashes that needs to be fix.

- Also, the character cells for character, location and episode detail view is not optimized for iPad screen yet.