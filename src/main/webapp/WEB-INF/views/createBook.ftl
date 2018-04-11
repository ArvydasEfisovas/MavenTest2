
<!DOCTYPE html>
<#import "templates/spring.ftl" as spring/>
<html lang="en">
<html manifest="cache.manifest">
<head>
  <link rel="shortcut icon" type="image/x-icon" href="img/mouseicon.ico" />
  <title>Book Registration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <#include "/resources/css/style.css">
  <style>
  </style>

</head>
<body>
  <nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class = "navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
      <div class="collapse navbar-collapse" id ="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="/KnyguLaboras/"> Home</a></li>
          <li ><a href="#" class ="scrollto1" type="button"> About</a></li>
          <li ><a href="#" class ="scrollto2"> Info</a></li>
          <li ><a href="#" class ="scrollto3"> Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>



<div class="container">
  <@spring.bind "book"/>
	<#if noErrors??>
<table class="table table-bordered">
	<tr>
	<th> Name</th>
	<th> Year</th>
	<th> Author</th>
	<th> Genre</th>
	<th> Rarity</th>
	<th> Pages</th>
	<th> Cover</th>
	</tr>
	<tr>
		<td> ${book.name}</td>
		<td> ${book.year}</td>
		<td> ${book.author}</td>
		<td> ${book.genre}</td>
		<td> ${book.rarity}</td>
		<td> ${book.pages}</td>
		<td> ${book.cover}</td>
	</tr>
</table>
	<a href = "/KnyguLaboras/"><button class = "btn bt-default">Rodyti Vartotojus</button></a>
	<#else>
	<form name "book" action="/KnyguLaboras/addBook" method="post">
		Name: <br>
		<@spring.formInput "book.name"/>
		<@spring.showErrors "<br>"/><p>
		Year: (1900-01-01/2099-12-31) <br>
		<@spring.formInput "book.year"/>
		<@spring.showErrors "<br>"/><p>
		Author: <br>
		<@spring.formInput "book.author"/>
		<@spring.showErrors "<br>"/><p>
		Genre: <br>
		<input type = "radio" name="genre" value = "Documentary" checked="true"/> Documentary
		<input type = "radio" name="genre" value = "Romance"/> Romance
		<input type = "radio" name="genre" value = "Adventure"/> Adventure
		<@spring.showErrors "<br>"/><p>
		Pages: <br>
		<input placeholder = "email" type = "number" name = "Pages" value = "${book.pages}"><p>
		<@spring.showErrors "<br>"/><p>
		Rarity: <br>
		<input type = "radio" name="rarity" value = "Rare" checked="true"/> Rare
		<input type = "radio" name="rarity" value = "Uncommon"/> Uncommon
		<input type = "radio" name="rarity" value = "Common"/> Common
		<@spring.showErrors "<br>"/><p>
		Cover: <br>
		<input type = "radio" name="cover" value = "Hard" checked="true"/> Hard
		<input type = "radio" name="cover" value = "Soft"/> Soft
		<@spring.showErrors "<br>"/><p>	
		<input type = "submit" class = "btn bt-default" value = "prideti">
	</form>
	</#if>
</div>

</body>
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/js/main.js"></script>
</html>