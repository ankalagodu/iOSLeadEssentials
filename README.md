# iOSLeadEssentials
iOSLeadEssentials repo for course 

## Use Cases

### Load FeedFrom Remote Use Case

#### Data:
- URL

#### Primary course (happy path):
1. Execute "Load Image Feed" command with above data.
2. System downloads data from the URL.
3. System validates downloaded data.
4. System created image feed from valid dtaa.
5. System delivers image feed.

#### Invalid data - error course (sad path):
1. System delivers invalid data error.

#### No connectivity - error course (sad path):
1. System delivers connectivity error.


### Load Feed From Cache Use Case

#### Primary course:
1. Execute "Load Image Feed" command with above data.
2. System fetches feed data from cache.
3. System validates cache is less than 7 days old.
4. System creates image feed from cached data.
5. System delivers iamge feed.

#### Error course (sad path):
1. System delivers error.

#### Expired cache course (sad path):
1. System deletes cache.
2. System delivers no feed images.

#### Empty cache course (sad path):
1. System delivers no feed iamges.


### Cache Feed Use Case

#### Data:
- Image Feed

#### Primary course (happy path):
1. Execute "Save Image Feed" command with above data.
2. Sytem delete old cache data.
3. System encodes image feed.
4. System timestamps the new cache.
5. Sytem save new cache data.
6. System delivers success message.

#### Deleting error course (sad path):
1. System delivers error.

#### Saving error course (sad path):
1. System delivers error.

## Flowchart 


## Architecture 
