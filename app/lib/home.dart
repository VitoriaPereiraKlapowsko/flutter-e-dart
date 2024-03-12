import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary, //Dando cor
        title: Text('AULA'),
      ),
      drawer: Drawer(
        //Barra Lateral esquerda
        child: ListView(
          children: [
            DrawerHeader(
              //Cor na parte do menu da barra lateral
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'MENU',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            //Icones na barra lateral
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                //Não faz nada ao clicar
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
              onTap: () {
                //Não faz nada ao clicar
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {
                //Não faz nada ao clicar
              },
            ),
          ],
        ),
      ),


      
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>(
          Text(
            'Naruto Uzumake',
            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>
            )
            Text('+55 11 98546 5066',
            style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            SizedBox(
              widht: 15,
            ),
            Icon(
              Icon.email,
              color: Colors.black,
            ),
            SizedBox(
               widht: 5,
            )
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              Colors.red,
              Colors.green,
              Colors.teal,
            ),
          ),
          borderadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 10,
               top: 7,
              child: Container(
                height: 90,
                width: 100,
                child: ClipOval(
              child: Image.asset(
                'assets/images/imagem.jpeg',
              ),
              ),
              ),
            ),

            Positioned(
              left: 20,
              top: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Naruto Uzumake'
                     style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )


          ),





      
      bottomNavigationBar: BottomAppBar(
        //Menu inferior
        color: Theme.of(context).colorScheme.inversePrimary, //Dando a cor
        shape: AutomaticNotchedShape(
          //Colocando o cortezinho no menu para o botão não ficar em cima
          RoundedRectangleBorder(), //Deixando com as bordas retangulares
          StadiumBorder(), //Recortando mais para baixo
        ),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, //Dando um espaçamento entre os icones
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.list,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.print,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Botão flutuante em cima do menu inferior
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 147, 189, 224),
        shape: CircleBorder(), // Forma como circular
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

@override
Widget build(BuildContext context) {
  return Container();
}




/*  Aqui o que estava no centro do App, 1 imagem e 1 botão

child: Column(
          mainAxisSize:
              MainAxisSize.min, // Centralizando os widgets na vertical
          children: [
            Image.network(
              'https://www.vhv.rs/dpng/d/615-6159039_cat-reaction-reactioncat-catreaction-meme-confused-cat-no.png',
              fit: BoxFit.cover,
              height: 300,
              width: 300,
            ),
            SizedBox(height: 20), // Espaçamento entre a imagem e o botão
            ElevatedButton(
              onPressed: () {},
              child: Text('Dispositivos Móveis'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 80, vertical: 20), // Colocando tamanho no botão
                backgroundColor: Colors.amber,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),*/

/*Colocando Botão na tela
class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context){
    title: Text('AULA'),
    ),
    body: ElevatedButton(
      onPressed: () {},
      child: Text('Dispositivos Móveis'),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(80),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
      ),
    );
  };
}
*/

/*class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('AULA'),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>,
        Container(
          alignment: Alignment.center,
          width: 300,
          height: 300,
          decoration: BoxDecoration(backgroundBlendMode
            image: DecorationImage(
              fit:  
            )),
        )
      ),
    );
  };
}*/
//Usando o Drawer eu posso colocar aquela barrinha lateral que abre um menuzinho
