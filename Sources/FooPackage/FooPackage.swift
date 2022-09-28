import Appwrite

public struct FooPackage {
    
    static let client = Client()
    static let account = Account(client)
    
    public static func login(endpoint: String, projId: String, email: String, pw: String, completion: @escaping (Result<Session, AppwriteError>) -> Void) {
     
        client.setEndpoint(endpoint).setProject(projId)
        
        account.createSession(email: email, password: pw, completion: completion)
        
    }
}
