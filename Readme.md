# 🔐 Role-Based Login System (JSP + JavaBeans + Captcha +Css)

## 📌 Project Overview

The **Role-Based Login System** is a simple web application developed using **HTML, CSS, JavaServer Pages (JSP), and JavaBeans**.

This project demonstrates a **secure login authentication system** with two user roles:

* **Admin**
* **Student**

After successful login, the system checks the user role and redirects them to the appropriate dashboard.

* **Admin → Admin Dashboard**
* **Student → Student Dashboard**

The project also demonstrates **JavaBeans usage, session management, and captcha validation** for better authentication handling.

---

# 🚀 Key Features

## 👤 User Authentication

* Login using **Email and Password**
* Uses **JavaBeans to store user data**
* Retrieves values from beans using:

```
<jsp:getProperty>
```

* Displays logged-in user email on the dashboard

---

## 🔐 Captcha Verification

* Simple **math-based captcha**
* Prevents automated login attempts
* Captcha value stored in **session**
* Verified inside **authenticate.jsp**

Example:

```
sum = number1 + number2
```

User must enter the correct result to continue login.

---

## 🧠 JavaBeans Integration

This project uses **JavaBeans to manage user data**.

Bean stores:

* Email
* Password
* Role information

Example usage:

```
<jsp:useBean id="user" class="com.RoleBasedLogin.bean.userbean" scope="session"/>
<jsp:setProperty name="user" property="*"/>
```

Benefits:

* Cleaner code
* Separation of logic
* Reusable components

---

# 🧑‍💼 Admin Dashboard

Admin can access:

* Manage Students
* Manage Courses
* View Reports
* System Settings

Admin dashboard file:

```
admin.jsp
```

---

# 🎓 Student Dashboard

Student can access:

* View Profile
* Access Courses
* View Assignments
* Check Results

Student dashboard file:

```
student.jsp
```

---

# 🎨 User Interface

The project includes **separate CSS styling for each page**:

| File        | Purpose              |
| ----------- | -------------------- |
| style.css   | Login page styling   |
| admin.css   | Admin dashboard UI   |
| student.css | Student dashboard UI |

Features:

* Clean layout
* Navigation bar
* Logout button
* Responsive structure

---

# 🏗 System Architecture

## 1️⃣ Presentation Layer

Handles UI and user interaction.

Files:

* `Login.jsp`
* `admin.jsp`
* `student.jsp`

Technologies:

* HTML
* CSS

---

## 2️⃣ Application Logic Layer

Handles authentication and processing.

Files:

* `authenticate.jsp`
* JavaBeans class

Functions:

* Captcha verification
* Credential validation
* Role detection
* Session management

---

# 📂 Project Structure

```
Role-Based-Login-System/
│
├── Login.jsp
├── authenticate.jsp
├── admin.jsp
├── student.jsp
├── logout.jsp
│
├── style.css
├── admin.css
├── student.css
│
├── WEB-INF
│   └── classes
│       └── com
│           └── RoleBasedLogin
│               └── bean
│                   └── userbean.java
│
└── README.md
```

---

# 🔑 Default Login Credentials

Currently the system uses **hard-coded authentication**.

| Role    | Email                                         | Password    |
| ------- | --------------------------------------------- | ----------- |
| Admin   | [admin@gmail.com](mailto:admin@gmail.com)     | admin@123   |
| Student | [student@gmail.com](mailto:student@gmail.com) | student@123 |

---

# ⚙️ How the System Works

### Step 1

User opens the login page:

```
Login.jsp
```

---

### Step 2

User enters:

* Email
* Password
* Captcha

---

### Step 3

Form sends data to:

```
authenticate.jsp
```

---

### Step 4

JavaBean stores the user data:

```
<jsp:setProperty name="user" property="*"/>
```

---

### Step 5

Captcha validation is performed using session values.

If captcha fails:

```
Invalid Captcha
```

---

### Step 6

Credentials are verified.

If valid:

* Admin → `admin.jsp`
* Student → `student.jsp`

---

### Step 7

Logged-in user's **email is retrieved from JavaBean and displayed on dashboard.**

Example:

```
<jsp:getProperty name="user" property="mail"/>
```

---

# 🔓 Logout Functionality

The system includes **logout support**.

File:

```
logout.jsp
```

Process:

* Session invalidated
* User redirected to login page

---

# ▶️ How To Run the Project

### 1️⃣ Install Required Software

* JDK 8+
* Apache Tomcat Server

---

### 2️⃣ Deploy Project

Place the project inside:

```
Tomcat/webapps/
```

Example:

```
webapps/Role-Based-Login-System
```

---

### 3️⃣ Start Tomcat Server

Run:

```
startup.bat
```

---

### 4️⃣ Open Browser

```
http://localhost:8080/Role-Based-Login-System/Login.jsp
```

---

# 📈 Learning Outcomes

Through this project you will learn:

* JSP form handling
* JavaBeans usage
* Captcha implementation
* Session management
* Role-based authentication
* JSP page redirection
* UI design using CSS

---

# 🔮 Future Enhancements

Planned improvements:

* MySQL database integration using **JDBC**
* Use **Servlets instead of JSP scriptlets**
* Add **user registration system**
* Implement **password encryption**
* Add **role management from database**
* Implement **Spring Boot backend**

---

# 👨‍💻 Author

**Deepak Muduli**

Aspiring **Java Backend Developer**

Focused on learning:

* Java
* JSP & Servlets
* Backend Development
* Database Systems

---
