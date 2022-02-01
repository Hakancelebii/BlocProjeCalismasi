import 'package:blockullanimi/sayacemit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci Sayfa "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<SayacCubit,int>(
              builder: (context,sayacDegeri){
                return Text("$sayacDegeri" , style: TextStyle(fontSize: 36),);
              },
            ),
            ElevatedButton(onPressed: (){
              context.read<SayacCubit>().sayaciArttir();
            }, child: Text("Sayaç Arttır"),),
            ElevatedButton(onPressed: (){
              context.read<SayacCubit>().sayaciAzalt(2);

            }, child: Text("Sayac Azalt"),)
          ],
        ),
      ),
    );
  }
}
