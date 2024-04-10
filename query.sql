--
-- Dokumentācija:
-- https://www.w3schools.com/sql/default.asp
-- vai
-- https://sqlzoo.net/wiki/SQL_Tutorial
-- Palaist kodu:
-- https://sqlfiddle.com/sqlite/online-compiler (SQLite vai MySQL)
-- or
-- https://sqlite.org/fiddle/ 
--

-- Uzdevums: uzrakstīt zemāk minētus skripts un saglabāt šajā failā

-- Izveidot tabulu atbilstoši faila books.json struktūrai (CREATE)+
-- Ierakstīt 10 jebkuru grāmatu ierakstus jaunā tabulā (INSERT) +
-- Atlasīt tikai grāmatu nosaukumu, ISBN un lapu skaitu (SELECT)+
-- Atlasīt grāmatu ar konkrētu ISBN (SELECT, WHERE)+
-- Sakārtot tabulu pēc lapu skaita, no lielāka uz mazāko (SELECT, ORDER BY)+

CREATE TABLE Books(
    title VARCHAR(100),
   isbn VARCHAR(100),
   pageCount INTEGER,
   authors VARCHAR(100),
   publishDate VARCHAR(100),
   description VARCHAR(100)
);

INSERT INTO Books (title, isbn, pageCount, authors, publishDate, description)
VALUES ("Node.js in Action", "1617290572", 300, "Mike Cantelon, Marc Harter, T.J. Holowaychuk, , Nathan Rajlich", "2013-10-15T00:00:00.000-0700", "Node.js in Action is an example-driven tutorial that starts at square one and guides you through all the features, techniques, and concepts you'll need to build production-quality Node applications. You'll start by learning how to set up your Node development environment, including loading the community-created extensions. Next, you'll run several simple demonstration programs where you'll learn the basics of a few common types of Node applications. Then you'll dive into asynchronous programming, a model Node leverages to lessen application bottlenecks."),
("Spring in Action", "1932394354", 472, "Craig Walls, Ryan Breidenbach", "2005-02-01T00:00:00.000-0800", "Spring in Action introduces you to the ideas behind Spring and then quickly launches into a hands-on exploration of the framework. Combining short code snippets and an ongoing example developed throughout the book, it shows you how to build simple and efficient J2EE applications. You will see how to solve persistence problems using the leading open-source tools, and also how to integrate your application with the most popular web frameworks. You will learn how to use Spring to manage the bulk of your infrastructure code so you can focus on what really matters     your critical business needs."),
("Implementing PeopleSoft Financials", "138411808", 220, "Early Stephens", "1997-01-01T00:00:00.000-0800", "Implementing PeopleSoft Financials discusses the issues that arise and the pitfalls to avoid. Every member of the implementation team--from entry-level accounting clerk through MIS staff to executive sponsors--will benefit from reading this book."),
("Becoming Agile", "1933988258", 408, "Greg Smith, Ahmed Sidky", "2009-05-01T00:00:00.000-0700", "   Becoming Agile is not another book to be classified in the existing ones handling agile practices, it's one of the rare writings which will go with you in the adoption and setup/migration to an agile process...This real must-have agilist's bedside book reads very well and will accompany you in your migration agile practices...       Eric Siber, Developpez.com"),
("Making Sense of Java", "132632942", 180, "Bruce Simpson, John Mitchell, Brian Christeson, Rehan Zaidi, , Jonathan Levine", "1996-06-01T00:00:00.000-0700", "Making Sense of Java clearly and concisely explains the concepts, features, benefits, potential, and limitations of Java."),
("PowerShell in Practice", "1935182005", 500, "Richard Siddaway", "2010-06-08T00:00:00.000-0700", "PowerShell in Practice is a hands-on, cookbook-style reference intended for administrators wanting to learn and use PowerShell. Written from an administrator's perspective, it concentrates on using PowerShell for practical tasks and automation. The book starts with an introduction that includes a rapid tutorial and a review of the key areas in which you'll use PowerShell."),
("Instant Messaging in Java", "1930110464", 402, "Iain Shigeoka", "2002-03-01T00:00:00.000-0800", "This intermediate Java programming book provides Java programmers with the information and tools needed to create your own IM client and server software."),
("Multiprotocol over ATM", "138892709", 341, "Andrew Schmidt, Daniel Minoli", "1998-03-01T00:00:00.000-0800", "With the detailed coverage of the entire set of protocols in Multiprotocol over ATM, you can be equal to the task."),
("Portlets in Action", "1935182544", 475, "Ashish Sarin", "2011-09-16T00:00:00.000-0700", "Portlets in Action is a comprehensive guide for Java developers with minimal or no experience working with portlets. Fully exploring the Portlet 2.0 API and using widely adopted frameworks like Spring 3.0 Portlet MVC, Hibernate, and DWR, it teaches you portal and portlet development by walking you through a Book Catalog portlet and Book Portal examples."),
("Hello World!", "1933988495", 432, "Warren D. Sande, Carter Sande", "2009-03-01T00:00:00.000-0800", "Hello World! provides a gentle but thorough introduction to the world of computer programming.");

SELECT title, isbn, pageCount FROM Books;
SELECT title FROM Books WHERE isbn="1932394354";
SELECT title, pageCount FROM Books ORDER BY pageCount DESC;