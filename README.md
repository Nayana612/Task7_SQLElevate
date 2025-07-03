# 👓 Task 7: Creating Views in SQL
 
I explored how to use **SQL Views** to simplify complex queries, secure data, and present customized information.

---

## 🎯 Objective

- Create views using `CREATE VIEW`
- Use views for data abstraction and security
- Practice querying views for reusable logic

---

## 🧱 Base Tables Used

- `Customers`
- `Orders`

---

## 🔍 Views Created

| View Name              | Purpose                                 |
|------------------------|-----------------------------------------|
| `CustomerOrderSummary` | Shows total orders and spend by customer |
| `HighSpenders`         | Filters customers with total spend > ₹700 |
| `OrdersWithCustomer`   | Combines order and customer info         |

---

## 📄 Example Queries

```sql
-- View: CustomerOrderSummary
SELECT * FROM CustomerOrderSummary;

-- View: HighSpenders
SELECT * FROM HighSpenders;

-- View: OrdersWithCustomer
SELECT * FROM OrdersWithCustomer WHERE amount > 300;
