# How to start a new project in MOTOKO locally

1. **Create a new project (ony for new project - not this one)**
    ```bash
    dfx new <project-name>
    ```

2. **Start the Project**
    ```bash
    dfx start
    ```
3. **Deploy with canister name(usually the project name)**
    ```bash
    dfx deploy <canister-name>
    ```
4. **Call any function in the deployed canister**
    ```bash
    dfx canistor call <canister-name> <function-name> '(<optional-arguments>)'
    ```

# How to create a new canister inside existing

- Change the dfx.json file
- Under canisters add a new canistor with your canistor name
- Set the the path to main.mo file
- Set the type of file as "motoko"