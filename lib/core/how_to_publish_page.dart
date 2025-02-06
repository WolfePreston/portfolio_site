// HOW TO BUILD AND REPLACE GITHUB PORTFOLIO

// Step 1:
// run in terminal
// flutter build web --web-renderer html

// Step 2:
// copy files from the build
// portfolio_flutter>portfolio_flutter>build>web

// Step 3: 
// replace all files in web build for github except the .git folder
// portfolio_flutter>web

// Step 4:
// open a command terminal and cd to the file location of the web build

// Step 5:
// git add .
// git commit -m ""
// git push (--force)

// Step 6:
// open github file index.html

// Step 7:
// delete line and commit changes
// <base href="/">

