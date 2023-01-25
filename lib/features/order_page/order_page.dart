import 'package:flutter/material.dart';
import 'package:foode_app/constants/constant.dart';
import 'package:foode_app/features/components/search_bar.dart';

import '../components/top_bar.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              TopBar(text: 'Order History', onTap: () {}, icon: Icons.fastfood_rounded, iconColor: Colors.white, backgroundOpacity: 1,),
              const SizedBox(
                height: 36,
              ),
              const SearchBar(),
              const SizedBox(
                height: 32,
              ),
              ...List.generate(10, (index) => _buildOrderHistoryList(context)),
              const SizedBox(height: 32,),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderHistoryList(BuildContext context) {
    return ListTile(
      leading: Container(
        alignment: Alignment.center,
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('assets/images/fresh_salad.png'),
          ),
        ),
      ),
      title: Text('Fresh Salad', style: Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.bold),),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Lovy Food', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.grey),),
          Text('\$11', style: Theme.of(context).textTheme.headline3!.copyWith(color: primaryColor, fontWeight: FontWeight.bold),),
        ],
      ),
      trailing: Container(
        alignment: AlignmentDirectional.center,
        width: 90,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.green,
        ),
        child: Text('Process', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),),
      ),
    );
  }
}
