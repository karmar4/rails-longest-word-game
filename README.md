# Longest Word Game

Longest word game is a browser based game in which you try to create the longest word out of the characters given in the shortest amount of time

## Motivation
I wanted to create a simple browser based game as a fun introduction to the rails framework.

## Installation

### Clone the repository
in your terminal:

```Ruby
git clone git@github.com:karmar4/rails-longest-word-game.git
cd project
```

### Check your Ruby version
in your terminal:

```
ruby -v
```

if you have a version below 2.5.1 install a leter version:

```
rbenv install 2.6.3
```

### install gems
in your terminal:
``` 
bundle install
```
## API Used
* https://wagon-dictionary.herokuapp.com/ 
*chosen word added to the end*


## Serve
in your terminal:
``` 
rails s
```

## How it works
* open [http://localhost:3000](http://localhost:3000/)
* enter a word made up of the displayed letters
  * if the word cannot be made with the given letter you will not recieve a score
  * if the word is not an English you will not recieve a score
* you will recieve a score based on the time taken and the length of the word



## Contributing
Anyone who would like to contribute is welcome to. For any major changes, please open an issue first to discuss what you would like to change.

