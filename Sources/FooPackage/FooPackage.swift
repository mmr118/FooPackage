import Foundation
import Appwrite

public struct FooPackage {
    
    static var client = Client()
    static var account = Account(client)
    
    public static func login(endpoint: String, projId: String, email: String, pw: String, completion: @escaping (Result<Session, AppwriteError>) -> Void) {
        client.updateEndpoint(endpoint).updateProject(projId)
        
        // Account does not seem to have the function createSession(email:password:completion:)
        // account.createSession(email: email, password: pw, completion: completion)
    }
}



public extension Appwrite.Client {
    
    @discardableResult
    func updateEndpoint(_ newEndpoint: String) -> Client {
        let _ = self.setEndpoint(newEndpoint)
        return self
    }
    
    @discardableResult
    func updateProject(_ newProject: String) -> Client {
        let _ = self.setProject(newProject)
        return self
    }

}
