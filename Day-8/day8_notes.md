# API
### rest(Representation State Transfer)
- its a representation of your data(how you are presenting, it can be json, xml, text,html, etc.).
- state means data which you want to transfer.
- transfer refers to transferring the data using some methods.
- HTTP using that we can transfer
 - GET: to get data,
 - POST: to create new data,
 - PUT:to update data,
 - Delete: to delete data
 - Patch: to update a single set or partial data.


#### for patch, delete, put we need to pass the id

## users.json
1. npm i -g json-server
npm install globally

2. json-server --version

3. json-server (file name) : to start json server

-- take the endpoint url and paste it in postman terminal
-- make sure to select body-> raw data-> json

---------------------------------------------------------------------------------------------
## React
1. to create react project: npm create vite@latest (npm is node package manager)
2.  in the app install: npm install (it will create a file nameed packge-lock.json and a folder named node-module)
3. npm run dev :- to run (dev is internally using dev)(check it in package.json)