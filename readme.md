# Boggle

## Current Implementation
Right now, the Boggle class runs recursively through each set of possible neighbors and compares strings longer than three characters with entries in the dictionary.  
If the string is found in the dictionary, it is added to the final array of words which is printed at the end.

### Board Set-Up
The board is added as a string of 16 characters.
On a physical board, they would look like:
+  0  1  2  3  
+  4  5  6  7
+  8  9 10 11
+ 12 13 14 15
 
### Neighbors
I figured out by hand what the possible neighbors would be for each index.
- N0:  [1, 4, 5]
- N1:  [0, 2, 4, 5, 6]
- N2:  [1, 3, 5, 6, 7]
- N3:  [2, 6, 7]
- N4:  [0, 1, 5, 8, 9]
- N5:  [0, 1, 2, 4, 6, 8, 9, 10]
- N6:  [1, 2, 3, 5, 7, 9, 10, 11]
- N7:  [2, 3, 6, 10, 11]
- N8:  [4, 5, 9, 12, 13]
- N9:  [4, 5, 6, 8, 10, 12, 13, 14]
- N10: [5, 6, 7, 9, 11, 13, 14, 15]
- N11: [6, 7, 10, 14, 15]
- N12: [8, 9, 13]
- N13: [8, 9, 10, 12, 14]
- N14: [9, 10, 11, 13, 15]
- N15: [10, 11, 14]

### Improvements
<p>While the current code implementation works, it is very slow.</p>
<p>I have already improved it greatly by switching from instantiating the dictionary as an array to a hash.</p>
<p>From there, changing from the include method to just searching by index of the hash, it has quickened considerably.</p>
<p>Still, it needs more work.</p>
<p>The biggest feature I would like to add is a search function that compares the current string to the beginnings of words in the dictionary.  </p>
<p>If it is found that that string is not contained at the beginning of any word in the dictionary, the loop through all of the possible paths from that point stop and it moves onto the next path.</p>
<p>I think this could cut the search time down quite a bit.</p>


