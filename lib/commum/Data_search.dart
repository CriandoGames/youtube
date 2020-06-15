import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.clear),
      onPressed: () {
        close(context, " ");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {

    if(query.isEmpty)
    query ="unity";

    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
     
     List<String>  response = List();
     
     if(query.isNotEmpty)
     {
       response = ["Infinite Bridge","Hero","Tutorial Unity 5","Noel Ride"," QUIZ","Mega Man X"].where(
          (texto) => texto.toLowerCase().startsWith( query.toLowerCase() )
      ).toList();

      return ListView.builder(
          itemCount: response.length,
          itemBuilder: (context, index){

            return ListTile(
              onTap: (){
                close(context, response[index] );
              },
              title: Text( response[index] ),
            );

          }
      );
      
    }else{
      return Center(
        child: Text("Nenhum resultado para a pesquisa!"),
      );
    }

  }
   
  
}
