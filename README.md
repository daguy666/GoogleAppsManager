<strong>Google Apps Manager</strong>

These are some shell wrappers that make it easier to run commands using Google Apps Manager

Download the installer here  <a href="https://github.com/jay0lee/GAM/archive/v3.42.tar.gz">GAM3.42</a> 

Google enforces quotas on the number of API operations a program can run. The client_secrets.json file is used to register your GAM program with Google and provide you with your own API quota. Instructions for generating and downloading client_secrets.json are on this page. Please note that despite the name, client_secrets.json does not provide authorized access to Google Apps, it only identifies your GAM install to Google for quota management. It is perfectly safe to use one client_secrets.json file with multiple Google Apps domains.

Check <a href="https://code.google.com/p/google-apps-manager/wiki/CreatingClientSecretsFile">HERE</a> for info on how to setup your client_secrets.json file 

Install into your home directory <code>~/gam</code>


run commands gam commands like this

<code>$ python gam.py info domain</code>
