# 🎓 School Management System

A comprehensive web-based School Management System built with **JSP, Servlets, JDBC, and MySQL**. This application provides an intuitive interface for managing students, teachers, and administrative tasks.

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![Maven](https://img.shields.io/badge/Apache%20Maven-C71A36?style=for-the-badge&logo=Apache%20Maven&logoColor=white)

## ✨ Features

- 🔐 **User Authentication** - Secure login and signup system
- 👨‍🎓 **Student Management** - Add, edit, delete, and view student records
- 👨‍🏫 **Teacher Management** - Complete CRUD operations for teacher data
- 🎨 **Modern UI** - Clean and responsive user interface
- 🔒 **Role-based Access** - Admin and user role management
- 📊 **Dashboard** - Centralized view of all management options

## 🛠️ Technologies Used

- **Frontend**: JSP, HTML5, CSS3
- **Backend**: Java Servlets
- **Database**: MySQL (JDBC)
- **Build Tool**: Maven
- **Server**: Jetty (Embedded)

## 📋 Prerequisites

Before running this application, ensure you have:

- ☕ **Java JDK 8+** - [Download](https://www.oracle.com/java/technologies/downloads/)
- 🗄️ **MySQL Server** - [Download](https://dev.mysql.com/downloads/mysql/)
- 🔧 **Maven** (included in project folder)

## 🚀 Quick Start

### 1️⃣ Database Setup

Run the SQL script to create the database:

```bash
# Using MySQL Command Line
mysql -u root -p < database.sql

# Or in MySQL Workbench
# File → Open SQL Script → Select database.sql → Execute
```

**Default MySQL Password**: `New@1234`

> ⚠️ If your MySQL password is different, update it in `src/main/java/com/school/util/DBConnection.java`

### 2️⃣ Run the Application

**Easiest Method** (Windows):
```bash
# Simply double-click run.bat
```

**Command Line**:
```bash
# Windows
.\run.bat

# Or using Maven directly
.\maven\apache-maven-3.9.5\bin\mvn.cmd jetty:run
```

### 3️⃣ Access the Application

Open your browser and navigate to:
```
http://localhost:8081
```

## 👤 Default Credentials

- **Username**: `admin`
- **Password**: `admin`

Or create a new account using the signup page!

## 📁 Project Structure

```
SchoolManager/
├── src/main/
│   ├── java/com/school/
│   │   ├── dao/              # Data Access Objects
│   │   ├── model/            # Entity Classes (User, Student, Teacher)
│   │   ├── util/             # Database Connection Utility
│   │   └── web/              # Servlets (Controllers)
│   └── webapp/
│       ├── css/              # Stylesheets
│       ├── WEB-INF/          # Configuration
│       └── *.jsp             # JSP Pages (Views)
├── maven/                    # Local Maven Installation
├── database.sql              # Database Schema
├── pom.xml                   # Maven Configuration
├── run.bat                   # Quick Start Script
└── README.md                 # This File
```

## 🎯 Usage

1. **Login/Signup** - Access the system with credentials
2. **Dashboard** - Navigate to Students or Teachers section
3. **Manage Students** - Add, edit, delete, and view student records
4. **Manage Teachers** - Complete teacher management operations
5. **Logout** - Securely end your session

## 🤝 Contributing

Contributions are welcome! Feel free to:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 👨‍💻 Author

Created with ❤️ by [Your Name]

## 🙏 Acknowledgments

- Inspired by modern school management systems
- Built following MVC architecture patterns
- Uses Bootstrap-inspired styling

---

⭐ **Star this repo if you find it helpful!**
