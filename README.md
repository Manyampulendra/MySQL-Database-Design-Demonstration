# 🗄️ MySQL Database Design & Demonstration

This repository contains the SQL scripts and presentation assets for building and querying a sample **Online Retail** database using **MySQL**. It demonstrates **relational database design**, **data manipulation**, and **analytical querying** in a real-world retail context.

---

## 🧠 Project Overview

The aim of this project is to showcase how to design and implement a relational database system for a simplified online retail environment using MySQL. It includes:

- A well-structured database schema
- An Entity Relationship Diagram (ERD)
- Multiple SQL queries for data retrieval and analytics

---

## 📁 Files Included

| File Name                                  | Description                                                   |
|-------------------------------------------|---------------------------------------------------------------|
| `MySQL Database Design & Demonstration.pptx` | Presentation slides explaining the design and flow           |
| `README.md`                               | Main project description (this file)                          |
| `online retail (database).sql`            | SQL script to create and populate the database schema         |
| `q1.sql` to `q7.sql`                      | SQL queries for various data analysis demonstrations          |

---

## 📋 Database Schema

The database models a simple e-commerce system and includes the following key tables:

- **`categories`** – Product classifications  
- **`products`** – Detailed product catalog  
- **`customers`** – Customer demographic and registration info  
- **`orders`** – Order records  
- **`order_items`** – Junction table for orders and products  
- **`payments`** – Payment-related data  
- **`shipping`** – Shipping status and delivery information

---

## 📊 Entity Relationship Diagram (ERD)

An **Entity Relationship Diagram** visually maps out the database schema and the relationships between tables. It’s included in the presentation file (`.pptx`) for better structural understanding.

> 🧩 Created using [DrawSQL](https://drawsql.app)

---

## 📝 SQL Query Demonstrations

Sample SQL queries in this repo illustrate key use cases:

1. 🔍 **List all customers** and their order details (order ID, date, status)  
2. 🚫 **Products currently out of stock**  
3. 💰 **Total sales per product** (`order_items` × product price)  
4. 🏆 **Customer with the highest total spend**  
5. 🏠 **All orders with shipping status** and delivery addresses  
6. 📦 **Order count per product**  
7. 🥇 **Most popular product category** by number of items sold

---

## 🛠️ Tools & Technologies Used

- **MySQL Workbench** – Database creation and querying
- **Microsoft PowerPoint** – Presentation design
- **DrawSQL** – Entity Relationship Diagram creation
- **Slidesgo** – Presentation theme/template
- **Flaticon** – Icons for slides and visual assets
- **ChatGPT** – Content drafting and logic validation

---

## 🚀 Future Enhancements

- **Data Extraction** – Export structured tables to Excel or CSV for external reporting
- **Data Visualization** – Use tools like Power BI to visualize sales, customer behavior, and order metrics

---

## 👨‍💻 Author

**Manyam Pulendra**  
🎓 BTECH | Aspiring Data Analyst  
📫 [manyampulendra55@gmail.com]  
🔗 [LinkedIn](https://www.linkedin.com/in/manyam-pulendra63/)

---

## 🚀 Explore or Fork the Project

Feel free to explore, fork, or reuse this project as a base for your own **MySQL learning**, **DBMS academic assignments**, or **retail database models**.

> ⭐ If this helped you, give it a star and connect with me on LinkedIn!
