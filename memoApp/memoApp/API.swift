// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class LaunchListQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query LaunchList {
      todo {
        __typename
        id
        date
        text
      }
    }
    """

  public let operationName: String = "LaunchList"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["query_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("todo", type: .nonNull(.list(.nonNull(.object(Todo.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(todo: [Todo]) {
      self.init(unsafeResultMap: ["__typename": "query_root", "todo": todo.map { (value: Todo) -> ResultMap in value.resultMap }])
    }

    /// fetch data from the table: "todo"
    public var todo: [Todo] {
      get {
        return (resultMap["todo"] as! [ResultMap]).map { (value: ResultMap) -> Todo in Todo(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Todo) -> ResultMap in value.resultMap }, forKey: "todo")
      }
    }

    public struct Todo: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["todo"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("date", type: .nonNull(.scalar(String.self))),
          GraphQLField("text", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, date: String, text: String) {
        self.init(unsafeResultMap: ["__typename": "todo", "id": id, "date": date, "text": text])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String {
        get {
          return resultMap["date"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "date")
        }
      }

      public var text: String {
        get {
          return resultMap["text"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "text")
        }
      }
    }
  }
}
