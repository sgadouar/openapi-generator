//
// AdditionalPropertiesClass.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class AdditionalPropertiesClass: Codable {

    public var mapProperty: [String:String]?
    public var mapOfMapProperty: [String:[String:String]]?


    
    public init(mapProperty: [String:String]?, mapOfMapProperty: [String:[String:String]]?) {
        self.mapProperty = mapProperty
        self.mapOfMapProperty = mapOfMapProperty
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(mapProperty, forKey: "map_property")
        try container.encodeIfPresent(mapOfMapProperty, forKey: "map_of_map_property")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        mapProperty = try container.decodeIfPresent([String:String].self, forKey: "map_property")
        mapOfMapProperty = try container.decodeIfPresent([String:[String:String]].self, forKey: "map_of_map_property")
    }
}
