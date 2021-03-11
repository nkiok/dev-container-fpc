# fpc-dev-container-demo

You have landed at home of our super cool train animation! In full blown ASCII !!!

## Environment setup

### Requirements
You need the following installed on your machine
  * [Docker desktop](https://www.docker.com/products/docker-desktop)
  * [VS Code](https://code.visualstudio.com)
  * [VS Code Remote Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

  
If you got all of them you are looking good already! Continue with the next steps

### Project setup

1. Clone this repository and open cloned repo folder with VS Code.
  
2. Should then be greeted with a pop-up window in the lower right-hand corner asking if you would like to reopen the project in a Remote Container.
  
  * If you choose to accept, VS Code will kick off the environment-container buid process.It might take a couple of minutes if it is the first time. The whole process can be monitored via the log window.
  
  * If you choose to decline, you just need to manually install FPC and you should be ok. Very easy, just google it and follow any good tutorial. We used to have some docs laying around but after a migration they were lost somewhere. Ah you will be fine...

## Building the application
  
Ok, so you actually made it here! Phew!
  
Time to get cracking with the code then...
  
Open a terminal session in the root folder of the project and start the compiler
  
`fpc demo.pas`
  
After succesful compilation, an executable file named `demo` will be created. You can run it by entering the following command in your terminal session
  
`./demo`

## Next steps
  
If you feel brave enough to accept the challenge, try to add syntax highlighting to the dev container definition and share with the rest of the team.
  
If not using the dev container, you can just install the extension in your local environment and then communicate the instructions to your team so that they can benefit from it as well.  
#### Hint: the extension ID is `wosi.omnipascal`
