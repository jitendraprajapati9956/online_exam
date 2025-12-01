# PHP Online Examination System

A complete **PHP-based Online Examination System** that allows users to register, log in, take tests, view results, and manage profiles. The system includes an admin panel, question management, result evaluation, and SQL database structure.

---

## 🚀 Features

* User Registration & Login
* Timed Online Tests
* Auto-evaluation of Answers
* User Profile Management
* Admin Panel for Question & Test Management
* SQL Database Included (`db_exam.sql`)
* Fully Functional PHP-based Backend

---

## 📂 Project Structure

```
├── admin/
├── classes/
├── config/
├── css/
├── db/
├── helpers/
├── img/
├── inc/
├── js/
├── lib/
├── db_exam.sql
├── exam.php
├── final.php
├── getLogin.php
├── getRegister.php
├── index.php
├── profile.php
├── register.php
├── start_test.php
├── test.php
├── viewAns.php
└── viva.php
```

---

## 🛠 Tech Stack

* **Frontend:** HTML, CSS, JavaScript
* **Backend:** PHP (Core PHP, no framework)
* **Database:** MySQL / MariaDB

---

## ⚙️ Installation Steps

### 1️⃣ Clone the repository

```
git clone (https://github.com/jitendraprajapati9956/online_exam.git)
```

### 2️⃣ Move project to your server

Place the folder inside:

* **XAMPP:** `htdocs`
* **WAMP:** `www`

### 3️⃣ Import the database

1. Open **phpMyAdmin**
2. Create a new database (e.g., `exam_db`)
3. Import the file: `db_exam.sql`

### 4️⃣ Configure database connection

Edit the database config file inside the `config/` or `db/` folder (depending on your setup):

```$host = "localhost";
\$user = "root";
\$password = "";
\$database = "exam_db";
```

### 5️⃣ Run the application

Open browser:

```
http://localhost/online_exam/
```

---



## 🤝 Contribution

Pull requests are welcome! If you'd like to enhance features or fix bugs, feel free to contribute.

---

## 📜 License

This project is licensed under the **MIT License**.
