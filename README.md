# Data Digger - SQL Project

## 📌 Objective
"Data Digger" is a beginner-friendly SQL project aimed at practicing CRUD operations, joins, aggregate functions, and relational database design using MySQL.

## 💡 Description
You will create and work with four relational tables for a basic E-Commerce system:
- Customers
- Orders
- Products
- OrderDetails

Each table will demonstrate insert, update, delete, and select operations. You'll also apply sorting, filtering, and aggregation.

---

## 📂 Tables & Fields

### 🧍 Customers Table
- CustomerID (PK)
- Name
- Email
- Address

### 📦 Orders Table
- OrderID (PK)
- CustomerID (FK)
- OrderDate
- TotalAmount

### 🛍️ Products Table
- ProductID (PK)
- ProductName
- Price
- Stock

### 📄 OrderDetails Table
- OrderDetailID (PK)
- OrderID (FK)
- ProductID (FK)
- Quantity
- SubTotal

---

## ✅ Sample SQL Operations

- Insert, update, delete, and fetch records from each table.
- Aggregate revenue using `SUM()`, get top products using `ORDER BY` and `LIMIT`.
- Retrieve most/least expensive product using `MAX()`/`MIN()`.

---

## ▶️ How to Run

1. Open MySQL Command Line or any SQL client.
2. Run the `data_digger.sql` script.
3. Explore the outputs table by table.

---

## 📁 Files

- `data_digger.sql` - Full SQL script with all tables and queries
- `README.md` - Project description and instructions

---
<img width="494" height="163" alt="Screenshot 2025-08-01 235228" src="https://github.com/user-attachments/assets/0355e5bc-a6bb-45e9-8de4-3a41deb8f466" />
<img width="569" height="596" alt="Screenshot 2025-08-01 235234" src="https://github.com/user-attachments/assets/6885216d-b826-4152-8ec3-c2be9255b765" />
<img width="808" height="953" alt="Screenshot 2025-08-01 235242" src="https://github.com/user-attachments/assets/bc4d06a7-e9c5-4ac0-b00c-fc4acc058439" />
<img width="496" height="762" alt="Screenshot 2025-08-01 235251" src="https://github.com/user-attachments/assets/9e28a5f8-bf31-40fd-99c1-8725be285393" />
<img width="753" height="691" alt="Screenshot 2025-08-01 235209" src="https://github.com/user-attachments/assets/06193866-793e-46fb-ab63-f19dd7a1954a" />
<img width="676" height="681" alt="Screenshot 2025-08-01 235218" src="https://github.com/user-attachments/assets/5736b17c-56c7-40c9-bad5-b28cfb6a0b09" />



