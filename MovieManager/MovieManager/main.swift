//
//  main.swift
//  MovieManager
//
//

import Foundation

struct Movie {
    var title: String
    var genre: String
    var rating: Double
}

var movieLibrary: [String: Movie] = [:]

func addMovie(title: String, genre: String, rating: Double){
    movieLibrary[title] = Movie(title: title, genre: genre, rating: rating)
}

func deletMovie(title:String){
    movieLibrary.removeValue(forKey: title)
}

func displayMovie(){
    for movie in movieLibrary.values {
        print("name: \(movie.title), Genre: \(movie.genre), Rating: \(movie.rating)" )
    }
}

//adding movies
addMovie(title: "Inception", genre: "Drama, Action, Adventure", rating: 9.0)
addMovie(title: "Finding Nemo", genre: "Animation, Adventure, Comedy", rating: 8.1)

//display the movie
displayMovie()

//delet a movie
deletMovie(title: "Inception")

//display the list after deleting
displayMovie()
