//
//  APIService.swift
//  TriviaGameDemo
//
//  Created by Alfy on 16/08/2025.
//

import Foundation


class APIService {
    
    func fetchTrivia() async throws -> ([Trivia.Result], Int){
        
        guard let url = URL(string: "https://opentdb.com/api.php?amount=10") else {
            throw URLError(.badURL)
        }
        
        let urlRequest = URLRequest(url: url)
        
        
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            
            guard (response as? HTTPURLResponse)?.statusCode == 200 else {
                throw URLError(.badServerResponse)
            }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let decodedData = try decoder.decode(Trivia.self, from: data)
            
            let trivia = decodedData.results
            let length = trivia.count

            return (trivia, length)
        
    }
    
}
