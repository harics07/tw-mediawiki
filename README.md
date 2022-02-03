# tw-mediawiki

# Updating Mediawiki Skins Usind CI/CD

The CloudFormation template executes the below resources,
1. EC2 Instances ( MediaWiki & Jenkins )
2. AutoScaling Group
3. LoadBalancer

The below snapshots are demonstration of updating a skin i.e Foreground changes to mediawiki application
To perform this we require,
1. LocalSettings.php
2. OpenSource skins package from mediawiki.org

OverView 

![mw-3](https://user-images.githubusercontent.com/76770914/152439038-821da9ed-f985-465c-b985-6b3fe5efd1ed.JPG)



The default skin by mediawiki package

![mw-1](https://user-images.githubusercontent.com/76770914/152439401-aac0fd30-5cff-4517-b14a-3f71f987a6e8.JPG)


The updated skin for mediawiki via Jenkins,

![mw-2](https://user-images.githubusercontent.com/76770914/152439534-8f504f3b-853c-4259-8aa2-bd2a41df73ca.JPG)
