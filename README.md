# Vehicle Rental System - Database Design & SQL

A relational database project designed to manage a vehicle rental service. This project focuses on **ERD modeling**, **relational integrity (PK/FK)**, and **complex SQL querying**.

## 📌 Project Overview

The objective of this project is to design a simplified Vehicle Rental System that handles users (Admins/Customers), vehicle inventory, and rental bookings while maintaining strict business logic and data integrity.

### Key Features:

* **User Management:** Role-based access and unique account identification.
* **Inventory Tracking:** Detailed vehicle logs with real-time availability status.
* **Booking Engine:** Transactional records linking users to vehicles with cost calculation.

---

## 📐 Entity Relationship Diagram (ERD)

The database follows a relational structure to ensure data consistency.

### Relationships:

* **User → Bookings (1:N):** One user can place multiple bookings over time.
* **Vehicle → Bookings (1:N):** One vehicle can be associated with multiple booking records (historical).
* **Integrity:** Primary keys ensure unique records, while Foreign Keys maintain the link between tables.

> **🔗 View Interactive ERD:** [private]

---

## 💻 Database Schema & Business Logic

| Table | Key Fields | Constraints |
| --- | --- | --- |
| **Users** | `id`, `name`, `email`, `role` | Unique Email, Role (Admin/Customer) |
| **Vehicles** | `id`, `reg_number`, `status` | Unique Reg Number, Status (Available/Rented/Maintenance) |
| **Bookings** | `id`, `user_id`, `vehicle_id` | Foreign Keys to Users & Vehicles, Status (Pending/Confirmed/etc.) |

---

## 🔍 SQL Queries

This repository includes solutions for the following database operations:

### 1. Booking Details (JOIN)

Retrieves a comprehensive list of bookings including the customer's name and the specific vehicle name.


### 2. Unbooked Vehicles (EXISTS)

Identifies vehicles that have never been rented out.


### 3. Inventory Search (WHERE)

Filters available vehicles by specific categories (e.g., 'Car').


### 4. Popular Vehicles (GROUP BY & HAVING)

Lists vehicles that have high demand (more than 2 bookings).



---

## 📹 Theory & Viva Preparation

The project includes a video submission covering the following core database concepts:

1. **Foreign Keys:** Their role in maintaining referential integrity.
2. **WHERE vs. HAVING:** Filtering rows vs. filtering groups.
3. **Primary Keys:** Uniqueness and non-nullability constraints.
4. **JOINs:** The difference between `INNER JOIN` (matching rows) and `LEFT JOIN` (all rows from left table).

