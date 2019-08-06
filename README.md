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

## 8. Install engine dependencies
`CTRL+SHIFT+P` and type `npm install` and click `npm: Install Dependencies`.
A small terminal should pop up and install dependencies.

## 9. Start development server
`CTRL+SHIFT+P` and type `npm start` and click `npm: Start`. A popup window at the bottom should have come up, setting up your server. It will automatically open a window on your default browser to http://localhost:3000/. Refresh the page and the game should be loaded.

Feel free to close the terminal panel with the X button, which will keep it running while you have VSCode open. If you hover over the icon it will be labeled `Close Panel`. If you want to stop the server, click the trash can button labeled `Kill Terminal`.

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
