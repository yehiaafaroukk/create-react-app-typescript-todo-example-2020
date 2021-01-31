# Create React App TypeScript Todo Example 2020

## What's this?

This is a [Create React App] based on [React](https://reactjs.org/) + [TypeScript](https://www.typescriptlang.org/) todo app example (To do list)



## Installation

###  Preparation

- Install `Node.js` newer than `10.16.3 LTS`(recommend newer than v14.8.0).
  If you have not it yet, follow https://nodejs.org/en/download/

**And then**

```bash
git clone git@github.com:yehiaafaroukk/create-react-app-typescript-todo-example-2020.git
cd create-react-app-typescript-todo-example-2020
yarn install   to install dependencies in package.json file
yarn start     to run project locally
```

**Finally Edit Code** 😎

## 👩‍💻 Usage

### `yarn start`

After that you'll seen the console which are server processes messages.  
Let's follow the message and put in URL `http://localhost:3000/` your browsers adressbar,  
and then you'll got todo app as same as Demo

### `yarn build`

After that You'll get bundled and optimization stuff in `build` directory.  
Also you can run production build with `serve` local webserver modules.

```bash
yarn global add serve
serve -s build
```

### `yarn lint`
 To run linter using eslint tool.
 we can although add the fix option as --> yarn lint:fix 


### `yarn typecheck`

While developing and building, Babel stop transpile with TS error messages.
I can't find way static typecheck with babel,
so I'm using original TypeScript via npm and specified `tsc --noEmit` compile option that doesn't generate compiled code.

### `yarn test`
To conver Unit testing using jest.

### `yarn cypress:open`
To cover end to end testing using cypress


`yarn cypress:open` require `yarn start` before `yarn cypress:open`

```bash
yarn start # Launch DevServer
yarn cypress:open
```

A gif showing E2E testing while running cypress.

![cypress_open](images/cypress_open.gif)

### `Build as a docker image and Push to docker Hub`
```





### pulling latest Docker image pushed in my Docker Hub repo and running it separately.. the image name is : my-webapp2 ... tag :latest

docker pull yehiaafaroukk/my-webapp2:latest
container exposed port is 80
And any local host port --> I picked 8080
docker run -d -p 8080:80 yehiaafaroukk/my-webapp2


