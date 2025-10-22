# 📚 Library Management System — SQL Project (PostgreSQL)

## 🧾 Overview
This project simulates a **Library Management System** built entirely using **PostgreSQL**.  
It covers all the essential CRUD operations, reporting queries, and stored procedures required to manage a library — from book issuance and return to branch-level performance analysis.

The SQL script includes tasks that demonstrate real-world database operations such as:
- Inserting and updating records  
- Creating and managing stored procedures  
- Joining multiple tables  
- Using `CTAS` (Create Table As Select)  
- Aggregation and reporting queries  

---

## 🏗️ Database Schema
The project assumes the following tables exist:

- **books** → stores book details (ISBN, title, author, category, rental price, status, etc.)  
- **members** → stores library member details (member ID, name, address, registration date)  
- **employees** → stores employee details (ID, name, position, salary, branch ID)  
- **branch** → stores branch and manager details  
- **issued_status** → tracks books issued to members  
- **return_status** → tracks books returned and their condition  

---

## 🧠 Key Tasks Implemented

| Task | Description |
|------|--------------|
| **1** | Add a new book record into the `books` table |
| **2** | Update an existing member's address |
| **3** | Delete a record from the `issued_status` table |
| **4** | Retrieve all books issued by a specific employee |
| **5** | Find members who have issued more than one book |
| **6** | Create a summary table `book_issued_cnt` using CTAS |
| **7** | Retrieve all books under a specific category |
| **8** | Find total rental income by category |
| **9** | List members who registered in the last 180 days |
| **10** | List employees along with their branch manager and branch details |
| **11** | Create a table of books with rental price above a certain threshold |
| **12** | Retrieve list of books not yet returned |
| **13** | Identify members with overdue books (over 30 days) |
| **14** | Create a procedure `add_return_records` to handle book returns |
| **15** | Generate a branch performance report using CTAS |
| **16** | Create `active_members` table for recently active members |
| **17** | Find employees who processed the most book issues |
| **18** | Identify members issuing damaged books repeatedly |
| **19** | Create a procedure `issue_book` to manage book issue logic |

---

## ⚙️ Stored Procedures

### 1. `add_return_records`
Handles book return operations:
- Inserts return details into `return_status`
- Updates book status to `yes`
- Displays a success message using `RAISE NOTICE`

**Example Usage:**
```sql
CALL add_return_records('RS138', 'IS135', 'Good');
