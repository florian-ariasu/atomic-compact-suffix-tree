# Atomic Compact Suffix Tree

> **An all-in-one implementation of atomic and compact suffix trees for
> advanced string processing and structural analysis.**

------------------------------------------------------------------------

## Overview

This repository contains a complete implementation of **Suffix Trees**,
including:

-   Atomic suffix tree construction
-   Tree-based statistical analysis
-   Suffix verification queries
-   Path compression into a Compact Suffix Tree (CST)

The project was developed as the second homework assignment for the
**Data Structures and Algorithms** course (1st year, 2nd semester).

> ⚠️ **Important**
>
> -   This project was completed after the end of the semester and
>     course conclusion.
> -   The implementation was developed with AI guidance and chatbot
>     assistance.
> -   The focus is on multi-way tree structures, suffix insertion logic,
>     traversal algorithms, and path compression.
> -   Intended for educational purposes.

------------------------------------------------------------------------

# Features

------------------------------------------------------------------------

## 1️⃣ Atomic Suffix Tree Construction (Task 1)

### Approach

-   **Atomic Insertion**\
    Each edge represents a single character.

-   **Suffix Decomposition**\
    Every input string is decomposed into all possible suffixes.\
    Example:\
    `"banana"` → `"banana$"`, `"anana$"`, `"nana$"`, `"ana$"`, `"na$"`,
    `"a$"`, `"$"`

-   **Termination Symbol**\
    Uses `$` to ensure each suffix ends in a unique leaf.

-   **BFS Traversal Output**\
    The tree is displayed level-by-level to visualize its structure.

### Complexity

    O(N * L²)

Where: - `N` = number of strings - `L` = maximum string length

------------------------------------------------------------------------

## 2️⃣ Tree Statistics (Task 2)

### Approach

-   **Leaf Counting**\
    Counts all nodes representing the end of a suffix (`$`).

-   **Suffix Length Counting**\
    Determines how many suffixes have length `K`.

-   **Maximum Branching Factor**\
    Finds the maximum number of direct children (out-degree) of any
    node.

### Complexity

    O(Nodes)

Requires a single traversal of the tree.

------------------------------------------------------------------------

## 3️⃣ Suffix Verification (Task 3)

### Approach

-   **Path Traversal**\
    Verifies if a suffix exists by following character edges.

-   **Leaf Validation**\
    A suffix is valid only if traversal ends correctly at a `$`
    terminator.

-   Efficient handling of multiple queries on the same constructed tree.

### Complexity

    O(M * L)

Where: - `M` = number of suffix queries - `L` = length of each suffix

------------------------------------------------------------------------

## 4️⃣ Path Compression -- Compact Suffix Tree (Task 4)

### Approach

-   **Edge Collapsing**\
    Converts the atomic tree into a Compact Suffix Tree.

-   **Node Merging**\
    Chains of nodes with a single child are merged into one edge label.

-   **Branch Preservation**\
    Compression stops at branching points or at `$`.

### Complexity

    O(Nodes)

Processes the atomic tree in a single pass.

------------------------------------------------------------------------

# CLI Usage

    ./tema2 [-c1 | -c2 K | -c3 | -c4] input_file output_file

### Options

-   `-c1` → Atomic tree construction (BFS output)
-   `-c2 K` → Tree statistics (suffix length = K)
-   `-c3` → Suffix existence verification
-   `-c4` → Compact suffix tree construction (BFS output)

------------------------------------------------------------------------

# Example Tests

### 🔹 Tree Construction (-c1)

Input:

    1
    banana

Output: Level-by-level character representation (e.g., `$ a b n ...`)

------------------------------------------------------------------------

### 🔹 Statistics (-c2, k = 3)

Input:

    1
    banana

Output:

    7
    1
    4

-   7 → Number of leaves\
-   1 → Number of suffixes of length 3\
-   4 → Maximum number of direct descendants

------------------------------------------------------------------------

### 🔹 Suffix Search (-c3)

Input:

    1 3
    banana
    na
    ana
    ban

Output:

    1
    1
    0

------------------------------------------------------------------------

# Summary

| Task | Objective | Technique | Complexity |
| :--- | :--- | :--- | :--- |
| Task 1 | Atomic Tree | Suffix Decomposition | $O(N \cdot L^2)$ |
| Task 2 | Statistics | Tree Traversal | $O(\text{Nodes})$ |
| Task 3 | Verification | Path Search | $O(M \cdot L)$ |
| Task 4 | Compression | Path Collapsing | $O(\text{Nodes})$ |

------------------------------------------------------------------------

# License

This project is licensed under the **MIT License**.\
See the `LICENSE` file for details.
