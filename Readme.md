# 🔐 Role-Based Login System (HTML + CSS + JSP)

## 📌 Project Overview

The **Role-Based Login System** is a simple web application developed using **HTML, CSS, and JavaServer Pages (JSP)**.

This project demonstrates a **login authentication system with two user roles**:

* **Admin**
* **Student**

When a user logs in with valid credentials, the system checks the role and redirects them to the appropriate **dashboard page**.

* Admin → **Admin Dashboard**
* Student → **Student Dashboard**

This project helps beginners understand **JSP form handling, authentication logic, and role-based redirection**.

---

## 🚀 Key Features

### 👤 User Authentication

* Login using **Email and Password**
* Hard-coded credential verification
* Error message for invalid login

### 🧑‍💼 Admin Dashboard

* Manage Students
* Manage Courses
* View Reports
* System Settings

### 🎓 Student Dashboard

* View Profile
* Access Courses
* View Assignments
* Check Results

### 🎨 Interface

* Clean and modern UI
* Separate dashboards for different roles
* Simple navigation with logout option

---

## 🏗 System Architecture

### 1️⃣ Presentation Layer

* HTML forms for login
* CSS used for styling dashboards

### 2️⃣ Application Logic Layer

* JSP scriptlets process login credentials
* Role-based authentication logic
* Page redirection using `response.sendRedirect()`

---

## 📂 Project Structure

```
Role-Based-Login-System/
│
├── login.jsp        (Login Page + Authentication Logic)
├── admin.jsp        (Admin Dashboard)
├── student.jsp      (Student Dashboard)
│
├── style.css        (Login Page Styling)
├── admin.css        (Admin Dashboard Styling)
├── student.css      (Student Dashboard Styling)
│
└── README.md
```

---

## 🛠 Technologies Used

* HTML
* CSS
* JavaServer Pages (JSP)
* Java (JDK 8+)
* Apache Tomcat Server

---

## 🔑 Default Login Credentials

The project currently uses **hard-coded authentication (no database)**.

| Role    | Email                                         | Password    |
| ------- | --------------------------------------------- | ----------- |
| Admin   | [admin@gmail.com](mailto:admin@gmail.com)     | admin@123   |
| Student | [student@gmail.com](mailto:student@gmail.com) | student@123 |

Depending on the credentials entered, the user will be redirected to the corresponding dashboard.

---

## ⚙️ How It Works

1. User opens the **Login Page**.
2. User enters **Email and Password**.
3. The form sends data to **Login.jsp**.
4. JSP retrieves the values using:

```
request.getParameter()
```

5. The program compares the credentials with predefined values.
6. If credentials match:

* **Admin → Redirect to `admin.jsp`**
* **Student → Redirect to `student.jsp`**

7. If credentials do not match, an **Invalid username or password** message is displayed.

---

## ▶️ How To Run

1. Install **Apache Tomcat Server**.
2. Place the project folder inside the **Tomcat webapps directory**.
3. Start the Tomcat server.
4. Open a browser and run:

```
http://localhost:8080/Role-Based-Login-System/login.jsp
```

---

## 📈 Learning Outcomes

* Understanding **JSP authentication**
* Handling **form data using request.getParameter()**
* Implementing **role-based login systems**
* Using **response.sendRedirect()**
* Designing **separate dashboards for users**

---

## 🔮 Future Enhancements

* Add **MySQL Database with JDBC**
* Implement **Servlet-based architecture**
* Add **Session management**
* Implement **secure password encryption**
* Add **user registration system**

---

## 👨‍💻 Author

Deepak Muduli
Aspiring Java Backend Developer
