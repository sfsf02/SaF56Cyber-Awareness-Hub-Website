# Awarness Hub website
# 🏫 School Website Project using Textpattern CMS

This is a school project that showcases a content-managed website built with [Textpattern CMS](https://textpattern.com/). The repository includes all necessary files to deploy the site locally or on a server, including a pre-filled database with sample content, sections, styles, and non-real user accounts.

---
**There is Pdf file for readme.md called readme.pdf.**
## 📁 What's Inside

- Full Textpattern CMS source code
- Custom themes, styles, and sections
- Sample content and page structure
- SQL file to restore the database (`textpattern.sql`)
- Configuration template (no sensitive data)
- documentation of the website

---

## ⚙️ Requirements

- PHP (>=7.4)
- MySQL/MariaDB
- Apache/Nginx web server
- MySQL **must be accessible on port `3307`**

---

## 🚀 How to Deploy (linux)

1. **Clone the repository**
   ```bash
   git clone https://github.com/sfsf02/SaF56Cyber-Awareness-Hub-Website.git textpattern
   cd textpattern

2. **Set up a database**
   - Create a MySQL database called "textpattern".
   - Ensure your MySQL server is listening on port 3307.
   - Import the included SQL file:
      ```bash
      mysql -u youruser -p -P 3307 textpattern < textpattern.sql

3. **Configure Textpattern**
   - This repo containing the config but if you have own textpattern you need to change the config file:
      - Copy config.php.example to config.php , or
      - Edit config.php to match your MySQL credentials and port (3307).
      - config.php.example:
         ```php
         $txpcfg['db'] = 'textpattern';
         $txpcfg['user'] = 'root';
         $txpcfg['pass'] = ''; 
         $txpcfg['host'] = 'localhost:3307';

4. **Serve the Files**
   - Place the files in your web server’s root directory (e.g. /var/www/html/).
   - Set permissions if needed (e.g., chmod -R 755).

5. **Access the Website**
   - Visit the site in your browser:
      ```arduino
      http://localhost/textpattern

6. **Access textpattren portal**
   ```arduino
   http://localhost/textpattern/textpattern

---

## 🚀 How to Deploy (windows)
##  Windows Setup Guide (Using XAMPP)
If you're using Windows, follow these steps with XAMPP:
1. **Install XAMPP**
   - Download from [apapachefriends](https://www.apachefriends.org/)
   - During setup, enable Apache and MySQL

2. **Change MySQL Port to 3307**
   - Open: C:\xampp\mysql\bin\my.ini
   - Find:
      ```ini
      # The following options will be passed to all MySQL clients
      [client]
      # password       = your_password 
      port=3306
      socket="C:/xampp/mysql/mysql.sock"
      **********
      # The MySQL server
      default-character-set=utf8mb4
      [mysqld]
      port=3306
   - change both to 3307

3. **phpMyAdmin Configuration**
   - Open: C:\xampp\phpMyAdmin\config.inc.php
   - Add or change the following:
      ```php
      $cfg['Servers'][$i]['port'] = '3307';
      $cfg['Servers'][$i]['user'] = 'root';
      $cfg['Servers'][$i]['password'] = ''; // your password
      $cfg['Servers'][$i]['AllowNoPassword'] = true;

4. **Import the Database**
   - Go to http://localhost/phpmyadmin
   - Create a database called "textpattern"
   - Go to Import and upload textpattern.sql

5. **Place Project Files**
   - Copy this repo to C:\xampp\htdocs\
      ```bash
      git clone https://github.com/sfsf02/SaF56Cyber-Awareness-Hub-Website.git textpattern

6. **Access the Website**
   - Visit the site in your browser:
      ```arduino
      http://localhost/textpattern

7. **Access textpattren portal**
   ```arduino
   http://localhost/textpattern/textpattern

---

## ❓ Why We Used Textpattern
- Lightweight and fast CMS
- Easy to use with clean HTML markup
- Ideal for structured content management
- Flexible templating system
- Perfect for learning and prototyping

---

## 👥 Project Team
- Mustafa – [@sfs02](https://github.com/sfsf02/) 
- OSCAR MUGISHA – [@Mugishaoscar](https://github.com/Mugishaoscar/)
- KWITONDA THEOS NTAGANIRA – [@kwitonda-theos](https://github.com/kwitonda-theos/)
- ELIE RUKUNDO – [@Rukundo-elie](https://github.com/Rukundo-elie/)
- ANGE YUMVAGUSENGA - [@angeyumva](https://github.com/angeyumva/)

---

## 🔐 Security Notice
- All user and content data in this project are for demo purposes only
- Do not use this configuration in production without securing:
   - config.php
   - Database credentials
   - File and folder permissions

---

## 📄 License
**This project is for educational use only. Contact the team for reuse or adaptation permissions.**