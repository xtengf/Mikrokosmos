---
title: Ruby Notebook
date: 2016-06-18 19:06:25
tags:
---

# Ruby NoteBook
  intro:
  1990s in Japan, Yukihiro Matsumoto was dreaming about his ideal PL.
  and in 1995, Matz released Ruby.

  CSV comma-separated value;

## Basics  

  the object u're calling the method on is known as the method *receiver*;
  u can think of calling a method on an object as *passing it a message*;
  `"hello".upcase`

  `print`
  `puts` adds a newline at the end of the string.
  included in Ruby's **top-level execution environment**
  `gets` --short for "get string"-- reads a line from standard input.

  `puts("one", "two")`
   most Rubyists prefer to:
  `puts "one", "two"`

  Rubyists are *adamant*(坚决的) that parentheses not be used if a method takes no arguments.
  So, don't do this: `gets()`

  String interpolation `#{}`

  `puts input.inspect`
  `p input`

  `chomp` remove the newline character
  `methods` list all the methods u can call on a object
  `puts 43.methods`
  `puts "hello".methods`
  the results is different. that's because of the *object's class*. A __class__ is a blueprint for making new objects, and it decides, among other things, what methods you can call on the object.

  __class__ lets object tell us what their class is.
  `puts 43.class`
  `rand` generates numbers between zero and just _below_ the maximum value you specify.
  `rand(100) + 1`

  `to_i`   `to_s`


## Conditionals
    if 1 < 2
       puts "It's true!"
    end

    if socre == 100
      puts "Perfect!"
    elsif socre >= 70
      puts "You pass!"
    else
      puts "Summer school time!"
    end`

    if ! true    if not true
    if true && true     if false || true

    unless
    unless light == "red"
       puts "Go!"
     else
       puts "Stop!"
    end

    if light == "red"
      puts "Stop!"
    else
      puts "Go!"
    end

    if ! (light == "red")
      puts "Go!"
    end

    unless light == "red"
      puts "Go!"
    end


### loop
    while number < 5
      puts "still looping"
    end

    if _counterpart_ unless
    while ... until

    number = 1
    while number <= 5
      puts number
      number += 1
    end

    number = 1
    until number > 5
      puts number
      number += 1
    end
