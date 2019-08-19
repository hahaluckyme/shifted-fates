# How to contribute

## 1. Download Github Desktop
https://desktop.github.com/

## 2. Download VSCode
https://code.visualstudio.com/

## 3. Download Git Bash
https://git-scm.com/download/win

## 4. Install Node JS, version `Recommended For Most Users`
https://nodejs.org/en/

## 5. Clone the `alphabet` game engine repo
1. In Github Desktop, click `File` -> `Clone repository...` or `Clone a repository from the Internet...`
2. Click the `URL` tab
3. Type `https://github.com/hahaluckyme/alphabet`
4. Ensure that the `Local path` points to your `GitHub\alphabet` folder.

## 6. Fork and clone the `shifted-fates` game data repo
1. `Fork` the project on the page https://github.com/hahaluckyme/shifted-fates by clicking `Fork`.
2. In Github Desktop, click `File` -> `Clone repository...` or `Clone a repository from the Internet...`
3. Click the `URL` tab
4. Type `https://github.com/hahaluckyme/shifted-fates`, but replace `hahaluckyme` with your Github username or else you won't be able to push any changes.
5. Change the `Local path` to end in `GitHub\alphabet\data` instead. Example: `C:\Users\Lucky\Documents\GitHub\alphabet\data`

## 7. Setup VSCode
Open VSCode and click `File` -> `Open Folder` -> and select the `data` folder. This is the folder that contains all of the game data that you can edit.

Example: `C:\Users\Lucky\Documents\GitHub\alphabet\data`

## 8. Install VSCode extensions
You should install these extensions (some may already be installed):
- [coffeescript-support](https://marketplace.visualstudio.com/items?itemName=yorkxin.coffeescript-support)
- [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
- [npm](https://marketplace.visualstudio.com/items?itemName=eg2.vscode-npm-script)

(OPTIONAL):
- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
- [WordCounter](https://marketplace.visualstudio.com/items?itemName=kirozen.wordcounter)

(OPTIONAL but ask someone for help):
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)

## 9. Setup game engine
`CTRL+SHIFT+P` and type `npm install` and click `npm: Install Dependencies`.
A small terminal should pop up and install dependencies. Wait for it to finish.

## 10. Start development server
`CTRL+SHIFT+P` and type `npm start` and click `npm: Start`. A popup window at the bottom should have come up, setting up your server. It will automatically open a window on your default browser to http://localhost:3000/. Refresh the page and the game should be loaded.

Feel free to close the terminal panel with the X button, which will keep it running while you have VSCode open. If you hover over the icon it will be labeled `Close Panel`. If you want to stop the server, click the trash can button labeled `Kill Terminal`.

## 11. Edit the game!
When you save any file named with `.coffee` at the end, it should refresh your game window with the latest build, automatically restarting the game.

## 12. Submit changes back
1. Open Github Desktop. There will be a list of changes that you've made in the left-hand panel.
2. Make a change by typing a summary for a title and a description describing your changes, then click `Commit to master`.
3. Click `Push origin` at the top to push up your changes to Github.
4. Click on `Branch` -> `Create pull request`.
5. Click on the `Create pull request` button on the Github site that is opened.
6. Then just wait for comments and one of the editors to accept your pull request! You might get some feedback on your changes--update your local copy with those suggestions, and then make another change and push it up again.

## 13. Need to download the latest version?
1. In Github Desktop, click on `Branch` -> `Rebase current branch`.
2. Click on the `upstream/master` branch.
3. If your game is up-to-date, it will say `This branch is up to date with master` at the bottom. Otherwise, click `Start rebase`.
