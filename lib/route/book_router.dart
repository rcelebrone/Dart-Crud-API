import '../dart_crud_api.dart';

class BookRouter extends Router {

  Future<Response> books(Request incomingRequest) async {
        final String reqMethod = incomingRequest.method;
        final String index = incomingRequest.path.variables["index"];
      
        if (reqMethod == 'GET') {
          if(index != null) {
            return Response.ok('Showing book by index: $index');
          }
          return Response.ok('Showing all books.');
        } else if (reqMethod == 'POST') {
          return Response.ok('Added a book.');
        } else if (reqMethod == 'PUT') {
          return Response.ok('Added a book.');
        } else if (reqMethod == 'DELETE') {
          return Response.ok('Added a book.');
        }
        // If all else fails
        return Response(405, null, 'Not sure what you\'re asking here');
    }
}