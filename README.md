# Hash-pass 
is a different password manager based on combining one password secret and the name of the service to predicably generate a strong password.
this has some advantages. The most interesting one in my opinion is that no actual password needs to be synced over the internet.
Each password is just a function of a password and the service name (and a version number to be able to change the password) 


simplified example:
```
password = getPasswordForService(serviceIdentifier="reddit.com", passwordHash="49287br897r8b73tbrrby8fob7bt3", passwordVersion=3)
clipboardService.setString(password)

```
