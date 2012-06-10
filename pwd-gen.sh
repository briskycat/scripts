#!/usr/bin/env bash -
# http://news.ycombinator.com/item?id=4091314

#Here's a useful one-liner to create a strong password in Linux:

cat /usr/share/dict/words|egrep -v "é|'s$|[Åå]|[Øø]"|shuf --random-source=/dev/random -n4

# This uses the dictionary /usr/share/dict/words and skips all the words containing 
# characters like é, å, ø and all those ending in 's. The resulting word list has 
# 72,940 words in it. Then it chooses 4 random words from this dictionary and prints 
# them to the screen. This gives a password with about 65 bits of entropy.

# By adding another word, thus creating a 5-word passphrase, a botnet capable of 
# checking 1,000 trillion passwords per second would spend, on average, 1600 years 
# cracking away before it would find the correct passphrase.

#Here are some example 4-word passphrases produced using this method:
#    poetically archaisms accept constrictors
#    leukemia shuttlecocked checkout benevolently
#    climactic gyrate dynamical predominates
#    massage beef Concords recliners

# These are surprisingly easy to remember. I use a 7-word passphrase for the most 
# important things and it didn't take me more than a day or two to learn it.
