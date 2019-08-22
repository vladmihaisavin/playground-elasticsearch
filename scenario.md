# Library
We have a library with *books*.
Each book has one/more *authors*.
Each book can belong to one/more/none categories

We start with **5** books and **3** authors.

One **book** has the following properties:

```
id: keyword
name: multi-field (keyword/text)
description: text
categories: nested with category objects
authors: nested with author objects
```
One **author** has the following properties:

```
id: keyword
name: keyword
dob: date
```
One **category** has the following properties:

```
id: keyword
name: keyword
```

## Tasks
1. List all entities (3 queries)
2. Query books by exact **name**
3. Query books by **description** (full text search)
4. Query books by either exact/full text search **name**
5. Query books by author's name
6. Query books by categories (must belong to all categories in the query)
7. List all books exclusively written by one author.
8. List categories for an author (queried by name)
9. List related authors based on category
10. Delete one author (treat the case when that author has books)