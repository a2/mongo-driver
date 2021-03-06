//
//  MongoDriver+Tests.swift
//  FluentMongo
//
//  Created by Paul Rolfe on 9/10/16.
//
//
import FluentMongo
import Fluent

import XCTest

extension MongoDriver {
    static func makeTestConnection() -> MongoDriver {
        do {
            return try MongoDriver(database: "test", user: "test", password: "test", host: "localhost", port: 27017)
        } catch {
            print()
            print()
            print("⚠️ MongoDB Not Configured ⚠️")
            print()
            print("Error: \(error)")
            print()
            print("You must configure MongoDB to run with the following configuration: ")
            print("    database: 'test'")
            print("    user: 'test'")
            print("    password: 'test'")
            print("    host: 'localhost'")
            print("    port: '27017'")
            print()
            
            print()
            
            XCTFail("Configure MongoDB")
            fatalError("Configure MongoDB")
        }
    }
}
