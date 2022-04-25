
import 'package:flutter/material.dart';


class review_de extends StatefulWidget {
  const review_de({Key? key}) : super(key: key);

  @override
  _review_deState createState() => _review_deState();
}

class _review_deState extends State<review_de> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFEAE7DE),
      body: ListView(
        children: [
          const Center(child: Text("Review",style: TextStyle(fontSize: 40),)),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 200,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0XFF64314D),
            ),
            child: Row(
              children: [
                Expanded(flex: 1,
                    child: Container(
                      child: const Icon(Icons.person,size: 50,),
                    )
                ),
                const Expanded(flex: 2,
                    child: Text("this seller have good product fvdsfvdsfffffffvv fdsdvsdfvgbvsfd vdfvbsgbvv fdvsdfvs fdbvsgdbvd "
                    ,style: TextStyle(color: Colors.white),
                    )
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 200,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0XFF64314D),
            ),
            child: Row(
              children: [
                Expanded(flex: 1,
                    child: Container(
                      child: const Icon(Icons.person,size: 50,),
                    )
                ),
                const Expanded(flex: 2,
                    child: Text("this seller have good product fvdsfvdsfffffffvv fdsdvsdfvgbvsfd vdfvbsgbvv fdvsdfvs fdbvsgdbvd "
                      ,style: TextStyle(color: Colors.white),
                    )
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 200,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0XFF64314D),
            ),
            child: Row(
              children: [
                Expanded(flex: 1,
                    child: Container(
                      child: const Icon(Icons.person,size: 50,),
                    )
                ),
                const Expanded(flex: 2,
                    child: Text("this seller have good product fvdsfvdsfffffffvv fdsdvsdfvgbvsfd vdfvbsgbvv fdvsdfvs fdbvsgdbvd "
                      ,style: TextStyle(color: Colors.white),
                    )
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 200,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0XFF64314D),
            ),
            child: Row(
              children: [
                Expanded(flex: 1,
                    child: Container(
                      child: const Icon(Icons.person,size: 50,),
                    )
                ),
                const Expanded(flex: 2,
                    child: Text("this seller have good product fvdsfvdsfffffffvv fdsdvsdfvgbvsfd vdfvbsgbvv fdvsdfvs fdbvsgdbvd "
                      ,style: TextStyle(color: Colors.white),
                    )
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 200,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0XFF64314D),
            ),
            child: Row(
              children: [
                Expanded(flex: 1,
                    child: Container(
                      child: const Icon(Icons.person,size: 50,),
                    )
                ),
                const Expanded(flex: 2,
                    child: Text("this seller have good product fvdsfvdsfffffffvv fdsdvsdfvgbvsfd vdfvbsgbvv fdvsdfvs fdbvsgdbvd "
                      ,style: TextStyle(color: Colors.white),
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
