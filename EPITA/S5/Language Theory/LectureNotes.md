Date: 22/10/2024
## Defining Regular Expressions
### Exercise 1
```
Language 1: the set of even binary integers
sigma = {0, 1}
e = (0+1)*0

Language 2: the set of binary words of even length
sigma = {0, 1}
e = ((0+1)(0+1))*

Language 3: the set of signed integers
sigma = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -} // by convention there is no '+'
e = ((-+'eps')(1+...+9)(0+...+9)*)+0
```


### Exercise 2
```
Consider the language defined by sigma = {very, fat, tall, ugly, man} and e = (very)+ fat? (ugly+tall) man. Which of the following words match e?

1) very fat man -> false
2) fat tall man -> false
3) very very fat ugly man -> true
4) very very very tall man -> true
5) very fat ugly -> false
6) tall man -> false
```


### Exercise 3
```
Find a language and alphabet to describe the set of valid c identifiers.

sigma = {0, ..., 9, a, ..., z, A, ..., Z, _}
e = [a-zA-Z_][a-zA-Z0-9_]*
```

A language is rational if and only if there exists a regular expression that describes it.

## Defining Automata
### Exercise 1
```c
// Find an algorithm to check if a word matches the regular expression "ab*a"

int match_regex(char* word)
{
	size_t i = 0
	
	if (word + i) != 'a') // match the first 'a'
		return 0;
	i++;
		
	while (*(word + i) == b) // match 'b*'
		i++;
	
	if (*(word + i) != 'a') // match the last 'a'
		return 0;
	i++;
	
	return *(word + i) == '\0' // the accepting state
}
```


### Exercise 2
```
Do the following words belong to the language of the automata? (12/23 -- Practical Application -- slides)

1) baba -> false
2) abab -> true
3) aaab -> true
4) aaaa -> true
5) 'epsilon' -> false (the start node is not accepting)
6) any word from L(a*ab*b) -> true
```


### Exercise 3 (TODO: figure out YAML)
```yaml
# Find two automata A1 and A2
# A1: recognizes all words starting with "ab"
# A2: recognizes all words ending with "ab"

a1:
	nodes: q0 q1 q2
	start: q0
	accepting: q2
	edges:
		q0q1: a
		...
```


### Exercise 4 (TODO: figure out YAML)
```yaml
# Find an automaton A3
# A3: recognizes all words starting with whose third to last letter is 'a'

...
```





Date: 28/10/2024
### Exercise 1 
```yaml
# Find an automaton A1
# A1: recognizes all numbers that are divisible by 3

...
```

### Exercise 2
```yaml
# Find an automaton A2
# A2: recognizes all words composed of the letters 'a' and 'b' that has an even number of 'a's and an odd number of 'b's.

...
```

### Exercise 3 
```c
# Find an algorithm that matches words from the language of words haveing n 'a's then n 'b's in sequence.

int match(char *word)
{
	size_t n = 0;
	size_t i = 0;
	while (*(word + i) != '\0' && *(word + i) == 'a')
	{
		n++;	
		i++;
	}
	while (*(word + i) == 'b')
	{
		n--;	
		i++;
	}
	return *(word + i) == '\0' && n == 0;
}

# *(word + i) == *(i + word) == word[i] == i[word]
```

### Exercise 4
```yaml
# Find an automaton A4
# A4: recognizes all word composed of letters from {a, b, c} where only two of thre three possible letters are ever used.

...
```






