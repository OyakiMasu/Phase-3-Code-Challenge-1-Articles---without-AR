#  Articles---without-AR

## Table of Content
<ol>
<li>Intro</li>
<li>Topics</li>
<li>Setup</li>
<li>Requirements</li>
<li>Guidelines</li>
</ol>

## Intro 
* Welcome to the first ruby code challenge. In here we will be going through some fundamentals of Ruby and using it to work on a challenge that we have been given.

* For this challenge we are given a Magazine Domain and we are supposed 
  to have three models Author, Article and Magazine.

*In the three models we have an Author which has many articles,a Magazine
has many Articles and Articles belong to both Author and Magazine.

<strong> Note : </strong>
 Author - Magazine is a many to many relationship.

## Topics

<ul>
    <li>Classes and Instances</li>
    <li>Class and Instance Methods</li>
    <li>Variable Scope</li>
    <li>Object Relationships</li>
    <li>Arrays and Array Methods</li>

</ul>

## Setup
* Once you have the plan in place for the application you want to build take the following steps:
 * Create a new project folder.
 * Create a new GitHub repository make sure it is private.
 * Add your TM as a contributor to this project.
 * Ensure you commit regularly.

## Requirements
* Create the following classes and their respective methods.
* Set up your application so it runs from a configured run file.
* Create instances of the classes on the run file and try out the    methods you just created.
* Use the notation # for instance methods, and .(dot) for class methods.
* Feel free to build out any helper methods if needed.

## Guidelines
* Follow the requirements given for Author,Magazine and Articles.
* My project I split it into four files:
 
 <ul>
    <li>Bin - run.rb</li>
    <li>Config - environment.rb</li>
    <li>Lib - author.rb, magazine.rb, articles.rb</li>
</ul>
   
   * In my run.rb is where the whole thing runs.
   * I used pry to test out the requiremnets .
   * In environmet.rb I used it as a place to store the              require_relatives to make it easier .
   * Then for each requiremnet run through them through pry and if you want clarity you can test through each file .Some are not direct but are simple to figure.

   ### License
   * This project is licensed under ISC.
