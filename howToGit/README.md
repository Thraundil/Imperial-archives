### How To Use Git with GitHub

###### Install Git Package on Debian/Linux
* sudo apt-get install git-core

###### Add a SSH Key
Run the following commands to add a SSH Key to your SSH-agent so you can use git without logging in again and again.
* ls -al ~/.ssh  // Gives you a list of the SSH key folder
* ssh-keygen -t rsa -b 4096 -C "your_email@example.com" // Generates a new SSH-key both private and public
* ssh-add ~/.ssh/fileNameYouJustCreated // Give this the file you just created, which is NOT ".pub"
* Now go to github and add a SSH Key, you must paste the contents from fileNameYouJustCreated.pub into github
Source: https://help.github.com/articles/generating-ssh-keys/

###### Download repository from github
* git clone https://github.com/Thraundil/Imperial-archives.git


###### Add changes to repository
* git add .             // Adds everything to next push
* git status            // shows changes you are about to commit
* git commit -m "Some Comment"  // Prepare for push
* git push            // You are sending all chosen changes to your repository

###### If you are ahead in branches user "push origin master
* git push origin master

###### Remove files from repository
* git rm filemane         // Removes file from repo on next push
* git status            // Shows changes you are about to commit
* git commit -m "Some Comment"  // Prepare for push
* git push            // you are sending all chosen changes to your repository

###### Download changes
* git pull

###### If greater changes has been made such as folder changes
* git add . --all         // Removes everything from repository and replaces it with your folder
* git status            // Shows changes you are about to commit
* git commit -m "Some Comment"  // Prepare for push
* git push            // You are sending all chosen changes to your repository

##### Branching

###### Create and start working on new branch
* git checkout -b branchname

###### Deletion of Branch
* git branch -d branchname

###### Merge branch into master branch
* git checkout master
* git merge branchname

##### How to update all git repositories
* Download the script above, updateAll.sh
* Place it in your work-folder, and rename the repos'
* Follow the comments in the file, you're done!
* (It loops through each git repo and git up/pull's them)


##### And lastly, don't forget!
#### Praise the Emperor



