# SuffixNodes

> **An all-in-one implementation of atomic and compact suffix trees for advanced string processing and structural analysis.**

## Suffix Tree Architect: Atomic & Compact Implementations

[cite_start]This repository contains a comprehensive implementation of Suffix Trees, covering atomic construction, statistical analysis, suffix searching, and path compression. [cite: 5, 8, 9]

> [!IMPORTANT]
> [cite_start]This is the second project homework for Data Structures and Algorithms class (1st year, 2nd sem) [cite: 2, 4]
- This project was completed **after the end of the semester** and the conclusion of the course.
- The implementation was developed with **AI guidance and chatbot assistance** throughout the process.
- [cite_start]The code focuses on complex tree manipulations, including multi-way branching and path collapsing. [cite: 6, 7, 10]
- Educational purposes only.

---

### Suffix Tree Construction (Cerința 1)

### Approach
- [cite_start]**Atomic Insertion**: Builds a tree where each edge represents a single character. [cite: 15]
- [cite_start]**Suffix Decomposition**: Every input word is broken down into all possible suffixes (e.g., "banana" generates "banana$", "anana$", etc.). [cite: 21, 22, 23]
- [cite_start]**Termination Symbol**: Uses the `$` character to ensure every suffix ends in a unique leaf node. [cite: 19]
- [cite_start]**BFS Visualization**: Displays the tree level-by-level to provide a clear view of the atomic structure. [cite: 276]



#### Complexity
**O(N * L²)** – where N is the number of strings and L is the maximum length of a string.

---

### Tree Statistics (Cerința 2)

### Approach
- [cite_start]**Leaf Counting**: Recursively traverses the tree to count all nodes representing the end of a suffix (`$`). [cite: 281]
- [cite_start]**Level Search**: Finds the number of suffixes of a specific length `K` by checking nodes at depth `K+1`. [cite: 282]
- [cite_start]**Branching Factor**: Identifies the maximum number of direct descendants (out-degree) found in any single node. [cite: 283]

#### Complexity
**O(Nodes)** – as it requires a single traversal of the tree structure.

---

### Suffix Verification (Cerința 3)

### Approach
- [cite_start]**Path Traversal**: Checks if a given string exists in the tree by following the character branches. [cite: 286]
- [cite_start]**Leaf Validation**: A match is only confirmed if the traversal ends and the next character in the tree is the `$` terminator. [cite: 289, 290]
- [cite_start]Efficiently handles multiple queries against the same pre-built tree. [cite: 289]

#### Complexity
**O(M * L)** – where M is the number of suffixes to check and L is the length of the suffix.

---

### Path Compression (Cerința 4)

### Approach
- [cite_start]**Edge Collapsing**: Transforms the atomic tree into a **Compact Suffix Tree (CST)**. [cite: 89, 90]
- [cite_start]**Node Merging**: Identifies chains of nodes with only one child and merges their characters into a single string label. [cite: 91]
- **Branch Preservation**: Compression stops whenever a node has multiple children or reaches the `$` terminator.



#### Complexity
[cite_start]**O(Nodes)** – processes the existing atomic tree into a compressed format in one pass. [cite: 293]

---

### Testing

#### Sample Inputs and Expected Outputs
[cite_start]To test the implementation, use the following sample data with the CLI arguments: [cite: 337]

1. **Tree Construction (-c1)**
   - [cite_start]Input: `1`, `banana` [cite: 298]
   - [cite_start]Expected Output: Level-by-level character representation (e.g., `$ a b n ...`). [cite: 300, 301, 302]

2. **Statistics (-c2)**
   - [cite_start]Input: `1`, `banana`, `k=3` [cite: 307, 308, 310]
   - Expected Output: 
     - [cite_start]`7` (Number of leaves) [cite: 309]
     - [cite_start]`1` (Suffixes of length 3: "ana$") [cite: 311]
     - `4` (Max descendants at root)

3. **Suffix Search (-c3)**
   - [cite_start]Input: `1 3`, `banana`, `na`, `ana`, `ban` [cite: 314, 315, 316, 317, 318]
   - [cite_start]Expected Output: `1`, `1`, `0`. [cite: 321, 322, 323]

---

### Summary

| Task | Objective | Key Technique | Complexity |
| :--- | :--- | :--- | :--- |
| **Cerința 1** | Atomic Tree | Suffix Decomposition | O(N * L²) |
| **Cerința 2** | Statistics | Tree Traversal | O(Nodes) |
| **Cerința 3** | Verification | Path Search | O(M * L) |
| **Cerința 4** | Compression | Path Collapsing | O(Nodes) |

---

### Licence

This project is licensed under the MIT Licence. See the [LICENCE](./LICENSE) file for further details.
