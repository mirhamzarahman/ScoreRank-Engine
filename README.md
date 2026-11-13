# 🏆 ScoreRank Engine

A lightweight SQL project demonstrating how modern leaderboard systems generate **dense rankings** for player scores, exam results, sales performance, or any ordered dataset while preserving fairness and consistency.

---

## 📖 Project Overview

ScoreRank Engine demonstrates a practical ranking mechanism where equal scores receive the same rank, and the following rank remains consecutive without leaving gaps.

Instead of treating this as a database exercise, the project models a reusable leaderboard component that can be integrated into gaming platforms, learning systems, competitions, or business analytics dashboards.

---

# 🌍 Real-World Concept

Imagine an online learning platform.

Students complete an exam.

Their scores are stored inside a database.

The platform must display a leaderboard where:

- Higher scores appear first.
- Students with identical scores share the same position.
- Rankings remain consecutive.

This project implements exactly that ranking logic.

---

# 💡 Core Concept

The project uses SQL's **Dense Ranking** strategy.

Unlike traditional ranking:

| Score | Rank |
|-------:|-----:|
|100|1|
|100|1|
|95|2|
|90|3|

Notice that rank **2** is not skipped.

This produces fair and readable leaderboards.

---

# ⚙️ How the System Works

1. Read every stored score.
2. Sort scores from highest to lowest.
3. Compare each score with previous scores.
4. Equal scores receive the same rank.
5. New unique scores increase the rank by one.
6. Return the leaderboard.

---

# 🧠 Algorithm Used

- Dense Ranking
- SQL Window Function
- Ordered Database Query

Primary SQL feature:

```sql
DENSE_RANK() OVER (ORDER BY score DESC)
```

---

# 🔄 Step-by-Step Logic

```
Load Scores
      │
      ▼
Sort Descending
      │
      ▼
Assign Dense Rank
      │
      ▼
Return Ordered Leaderboard
```

---

# ✨ Key Features

- 🏆 Fair leaderboard generation
- 📊 Dense ranking implementation
- ⚡ Efficient SQL solution
- 📁 Clean and reusable query
- 🎯 Handles duplicate scores naturally
- 💾 Database-friendly implementation

---

# 📌 Example

### Input

| ID | Score |
|---:|------:|
|1|4.00|
|2|4.00|
|3|3.85|
|4|3.65|
|5|3.65|
|6|3.50|

---

### Output

| Score | Rank |
|------:|-----:|
|4.00|1|
|4.00|1|
|3.85|2|
|3.65|3|
|3.65|3|
|3.50|4|

---

# ⏱ Complexity

| Operation | Complexity |
|-----------|------------|
|Sorting|O(n log n)|
|Ranking|O(n)|
|Overall|O(n log n)|

---

# 🛠 Technologies Used

- SQL
- MySQL 8+ (Window Functions)
- Relational Databases

---

# 📂 Project Structure

```
ScoreRank-Engine/
│
├── README.md
├── leaderboard.sql
└── LICENSE
```

---

# 🚀 How to Run

Clone the repository

```bash
git clone https://github.com/mirhamzarahman/ScoreRank-Engine.git
```

Open your SQL database and execute

```sql
SOURCE leaderboard.sql;
```

Or simply run the SQL query inside your preferred SQL editor.

---

# 📚 Learning Outcomes

This project demonstrates:

- Dense Ranking
- SQL Window Functions
- Ordered Query Processing
- Leaderboard Design
- Database Analytics
- Ranking Algorithms
- Handling Duplicate Values

---

# 🔮 Future Improvements

- REST API integration
- Dynamic leaderboard filters
- Ranking by multiple categories
- Pagination support
- Historical ranking snapshots
- Real-time score updates
- Web dashboard visualization

---

# 📄 License

This project is released under the MIT License.

Feel free to use, modify, and learn from it.

---

⭐ If you found this project useful, consider giving it a star!
