//
//  File.swift
//  
//
//  Created by Andrej Jasso on 06/08/2022.
//

import Foundation
import ArgumentParser

extension Command {

  struct ListProjectFiles: ParsableCommand {
    static var configuration: CommandConfiguration {
      .init(
        commandName: "list_project_files",
        abstract: "Lists all files contained in a project"
      )
    }

    @Argument(help: "Path To Project Repository")
    var pathToRepo: String

    func run() throws {
        let url = URL(string: pathToRepo)!
        let fileManager = FileManager()
        let contents = try fileManager.contentsOfDirectory(at: url, includingPropertiesForKeys: [.creationDateKey], options: [.includesDirectoriesPostOrder])
      print(contents)
    }

  }
}
