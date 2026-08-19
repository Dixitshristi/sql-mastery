# 🚀 Day 01: Relational Database Foundations & DDL

## 📌 Topics Covered
- **Relational Architecture:** Tables, Rows, Columns, Primary Key vs. Foreign Key.
- **Data Integrity & Constraints:** 
  - `PRIMARY KEY`: Unique and NOT NULL identifier.
  - `CHECK`: Ensuring business rules (e.g., `price > 0`).
  - `DEFAULT`: Fallback values when input is missing.
  - `UNIQUE`: Allows multiple `NULL` values because `NULL != NULL`.
- **DDL Operations:** `CREATE`, `ALTER`, and `DROP`.
- **DDL vs. DML:** Difference between `DROP`, `TRUNCATE`, and `DELETE`.

---

## 💡 Key Architectural Insights
1. **Implicit Commits:** Running any DDL command (`CREATE`, `ALTER`, `TRUNCATE`) automatically triggers an implicit `COMMIT`, breaking active transaction rollbacks.
2. **Referential Integrity:** Parent rows cannot be deleted if child rows exist under default `RESTRICT` behavior.
