# tw-mediawiki

# Updating Mediawiki Skins Usind CI/CD

The CloudFormation template executes the below resources,
1. EC2 Instances ( MediaWiki & Jenkins )
2. AutoScaling Group
3. LoadBalancer

The below snapshots are demonstration of updating a skin i.e Foreground changes to mediawiki application.

To perform this we require,
1. LocalSettings.php
2. OpenSource skins package from mediawiki.org

OverView 

![mediawiki](https://user-images.githubusercontent.com/76770914/152633607-5cc6f05e-91b3-43b8-ac76-03a78b2d7439.jpg)

Infra-Architecture

![architecture](https://user-images.githubusercontent.com/76770914/152633937-9224aeec-f4ca-4e6d-84e0-a2d6a2b8af9c.jpg)


The default skin by mediawiki package

![mw-1](https://user-images.githubusercontent.com/76770914/152439401-aac0fd30-5cff-4517-b14a-3f71f987a6e8.JPG)


The updated skin for mediawiki via Jenkins,

![mw-4](https://user-images.githubusercontent.com/76770914/152634135-d7ad5acb-aaeb-480e-a189-80042116aa7b.JPG)


![mw-2](https://user-images.githubusercontent.com/76770914/152439534-8f504f3b-853c-4259-8aa2-bd2a41df73ca.JPG)
