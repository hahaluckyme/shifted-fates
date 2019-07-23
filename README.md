# How to contribute

## 1. Download Github Desktop
https://desktop.github.com/

## 2. Download VSCode
https://code.visualstudio.com/

## 3. Install Node JS, version `Recommended For Most Users`
https://nodejs.org/en/

## 4. Fork the repo
Are you a confirmed writer for the game? If so, skip this step!

Otherwise, you will have to `Fork` the project on the page https://github.com/hahaluckyme/shifted-fates by clicking `Fork`.

## 5. Clone the `alphabet` game engine repo
1. Click `Clone a repository from the Internet...`
2. Click the `URL` tab
3.  Are you a DM? Type `https://github.com/hahaluckyme/alphabet`

## 6. Clone the `shifted-fates` game data repo
1. Click `File` -> `Clone repository...`
2. Click `Clone a repository from the Internet...`
3. Click the `URL` tab
4. type `https://github.com/hahaluckyme/shifted-fates`. If you are not a confirmed writer, replace `hahaluckyme` with your Github username.
5. Change the `Local path` to end in `GitHub\alphabet\data` instead. Example: `C:\Users\Lucky\Documents\GitHub\alphabet\data`

## 7. Setup VSCode
Open VSCode and click `File` -> `Open Folder` -> and select the `data` folder.

Example: `C:\Users\Lucky\Documents\GitHub\alphabet\data`

## 8. Install engine dependencies
`CTRL+SHIFT+P` and type `npm install`.
A small terminal should pop up and install dependencies.

## 9. Start development server
`CTRL+SHIFT+P` and type `npm start`. The terminal should start the development server for your game to run and a browser tab should be opened on your computer. You may have to refresh the page when it loads if it is a blank screen.

Feel free to close the terminal panel with the X button labeled `Close Panel`, it will keep running in the background.

## 10. Edit the game!
When you save, it should refresh your game window with the latest build.

## 11. Need to download game updates?
Are you a confirmed writer?
1. In Github Desktop, click the `Fetch origin` button.

Otherwise...
1. In Github Desktop, click on `Current branch` and select the `Branches` tab.
2. Set your branch to `master` and click `Choose a branch to merge into master`.
3. Click on `upstream/master` and then `Merge upstream/master into master`.
4. Then click `Push origin` to push the new changes back into your own copy of the game on Github.

## 12. Submit changes back
1. To submit changes back, open Github Desktop and type your changes in the left box, then `Commit to master`.
2. Click `Push origin` at the top to push up your changes to Github.

If you are not a confirmed writer, you will have to submit a Pull Request by also:
1. Clicking on `Branch` -> `Create pull request`.
2. Click on the `Create pull request` button on the Github site that is opened.
3. Then just wait for one of the maintainers to accept your pull request! If it gets accepted, you likely won't have to do anything and you'll see your changes in the next push of the game.
