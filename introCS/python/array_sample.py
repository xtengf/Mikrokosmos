import random

SUITS = ["Clubs", "Diamonds", "Hearts", "Spades"]
RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]

rank = random.randrange(0, len(RANKS))
suit = random.randrange(0, len(SUITS))
print(RANKS[rank] + ' of ' + SUITS[suit])

print()

deck = []
for rank in RANKS:
    for suit in SUITS:
        card = rank + ' of ' + suit
        deck += [card]
print(deck)

print()

# Exchange
# temp = deck[i]
# deck[i] = deck[j]
# deck[j] = temp

# Shuffle
n = len(deck)
for i in range(n):
    r = random.randrange(i, n)
    temp = deck[r]
    deck[r] = deck[i]
    deck[i] = temp
print(deck)

