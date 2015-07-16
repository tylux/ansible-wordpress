#This playbook deploys latest wordpress with a lemp server onto a Ubuntu host.

#Step 1

Edit site.yml with your favorite editor and change vars to match your server/site

```
  vars:
    host_ip: 10.0.1.117
    website: template-wp.com
    wp_user: wp_user
    wp_password: wp_password
    mysql_root_pass: root_password
```

#Step 2

Run the play book like so, replacing IP with the IP of your server
```
   ansible-playbook -i '10.0.1.117,' site.yml
```
