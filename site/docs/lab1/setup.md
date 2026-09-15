---
sidebar_position: 1
---

# 1.1. Initialize your environment

## Step 1: Create a free account and login to Grafana cloud

Please register your self at grafana labs

1.  Go to this url [register to grafana](https://grafana.com/auth/sign-up/create-user?pg=login) to register an account

2.  If you are presented with a choice of registration options. The easiest to use one of authentication providers. 
![alt text](/img/grafana_auth.png) 

3. Create your first stack, **choose your stack URL** for this workshop please use Singapore as your region 
![alt text](/img/firststack.png) **it might takes a while to create a new stack**

4. On the onboarding page, you can select **I'm already familiar with Grafana Cloud** and **Skip setup**

5. Choose **See all data connections**

6. Navigate to **Observability -> Application**
![alt text](/img/navigate_o11y_app.png)

7. **Activate Application Observability** and click **Connect data** 

8. Select **OpenTelemetry (OTLP)** and follow step-by-step process
    - Choose your infrastructure : **Linux**
    - Create a Grafana Cloud access token : **workshop-otel** 
    - Create token 
    - **⚠️ Please copy the token to be used on the later steps**
    - Scroll down under alloy config and **copy otel path and user name**
    - ![alt text](/img/otelusernamepassword.png)
    
9. Right now you will have three information, ⚠️ keep this information when configure the alloy on the next steps
    - GRAFANA_CLOUD_OTLP_ENDPOINT = **"The url endpoint"**
    - GRAFANA_CLOUD_OTLP_USERNAME = **"The username"**
    - GRAFANA_CLOUD_OTLP_PASSWORD = **"The token"**


## Step 2: Log in to your github account

1. Log in to your GitHub account.

2. Go to [https://github.com/hendritjipto/opentelemetry-workshop](https://github.com/hendritjipto/opentelemetry-workshop).

3. Click **Code** and then select **Codespaces** to launch a new codespace for this repository.

![alt text](/img/codespace.png)

4. Change the theme to suit your preference: click on the **Command Palette** icon located in the top right: 
    <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><g fill="currentColor"><path fill-rule="evenodd" d="M1.5 3L3 1.5h18L22.5 3v18L21 22.5H3L1.5 21zM3 3v18h18V3z" clip-rule="evenodd"/><path d="M7.06 7.5L6 8.56l4.243 4.243L6 17.046l1.06 1.06L12 13.168v-.728zm4.94 9h6V18h-6z"/></g></svg>

    - Then type **theme** to find the Theme command in the list.

    - Then, select a theme of your choice. Light? Dark? Whatever you prefer!

## Step 3: Run the demo app

In this first lab, we'll be working with demo application called _Rolldice_.

Let's test out this app:

1.  Launch a new Terminal by going to **Terminal -> New Terminal**

1.  In the terminal, run the following command to copy the first project into your persistent workspace:

    ```
    cd ./source/rolldice/
    ```

1.  Then, run the following commands to start the application:

    ```
    ./run.sh
    ```

    The application starts.

1.  Create a second terminal, either using the split terminal icon (located at the right edge of the tab bar where "Terminal 1" is located), or by going to **Terminal -> New Terminal**.

1.  In the second terminal, use _curl_ to make a sample request to the rolldice service:

    ```shell
    curl localhost:8080/rolldice
    ```

    The rolldice service returns a random number.

1.  Change back to the first terminal by clicking on its tab, then press **Ctrl+C** to stop the application.

## Summary

You've just run the demo application that we'll use in this lab. However, the application is rather isolated, and so far un-observed! 

In the next lab, we'll add OpenTelemetry instrumentation to the app, and begin shipping telemetry signals to Grafana Cloud.

Click on the next module below to proceed.

