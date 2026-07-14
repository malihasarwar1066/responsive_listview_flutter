import 'package:flutter/material.dart';
import 'package:flutter_list_view/popular_cars.dart';
import 'models.dart';
import 'custom_app_bar.dart';
import 'custom_search_bar.dart';
import 'brand_list_view.dart';

import 'animated_nav_bar.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarShopHomeScreen(),
    ),
  );
}

class CarShopHomeScreen extends StatelessWidget {
  const CarShopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BrandModel> dummyBrands = [
      BrandModel(
        name: 'Cadillac',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnwQgeEoW6wI4CLbadBNz4LfhuGiFyBghyxIGaYjk1ro5Q57nyQc7UilA&s',
      ),
      BrandModel(
        name: 'Tesla',
        logoUrl:
            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJQAAACUCAMAAABC4vDmAAAAY1BMVEUAAAD////29vbPz89VVVViYmLDw8Pu7u76+vpaWlrGxsYyMjKcnJxISEipqanq6uqLi4uwsLA9PT3h4eEqKiohISGFhYWioqJPT0+5ubkPDw/W1tYWFhZ3d3eVlZU3NzdsbGyiwMtgAAAD6klEQVR4nO2a6ZKjIBCAjfcZVIyJ4vX+T7kcopBjpzK1KFvV368QnPGLQrcNOg4AAAAAAAAAAAAAAADgOH1TFw/ffxR105/tQmX88hoSjBGKOAhhTMJr6Z8j1wRlRdzLR1xSlUFzoNBQTATFn4UkMSJTMRxhNLcd0q8JJmnXVZyuSwnWrx/q2tms0W1Mo/1CROwW0cE9KAOoH251wW5ttF/KKB1vxpSCbjOKqU8hvs0ehXpQ8cjWD9RsE4u6wJBULs8QjjO9OE093j0cuW607McsrI2961jTUd7PYyh/x92QVB/z3zw67D5evf1GutuoyfYBFVEzdtdGcX2NDfj8Qlp6nnryXH3ykXXM3Ig+/Vxvqum3LTF2oVhwomcovTfhKRQHhK89sVdSY6MhK6k+xKec9ebv++IqMajkON7701LoSBs/dnpGpTLFykWYeGkoQ2ldrx9QmnoEI+Umk8yolNNgeaIyyXjQvK9fYNkzsW/7LCjlqMfGc+BQ7WfmvNy0ZeuaeLs6Iv219IalezN5lvL3vpSGq/YAJUaOlDMVTxEiqve+FuUHKVFmZZRkWJciap/hB4TPpLpUeJaHRqdLVWf7cJ7i+PTzXxzAU0xYzvbh1JpTfGS18Be0HB2fbbOixQR8ts2KFhPsiAhP08+Oyfc0/cazbVbUlBz7Px9/CMVe11yi4ufjD6FRahhirhb+EmX6pT8ffRDVLnU922Vjsi8iOM6yS5lax/ieeZcyXEx9w5aS3bNNFLaUbEs6ZmwLG7akY8aWku2ZfEpKXs42UdhSstk1n++QKRnZko4ZclnRnnTMSO2bfFuVbEd1LCmFVHm2h0Zi3+RznEFInb8FqcFTsi3VsQTblo4ZoX0RYX0itikdM3hKtqU6liR0pMd2RQSakpFl6ZjBUrJd6ZiR2lQdS662pWNGa1s6ZvjaTpElDAY31H9PfDnb4A3YtnTMCG1Lx4zc3PsQv6c9al/2G3z7IoLj9JY9oAMAAAD/EznxJKy8W/DaILwsbmVvyDZnGk95YphlF/n3ry0V21ZHzpOcfDnP48UerWViyiXiirNWbckXHrGBWvVWZ0scNrV8JSoTiMb1MjasJcpRXUoeaegR/hF38mOxBIKlEFLl2r69SAWJIKif/98/l5K7aWJVY9uw5bvtmlS/7QWaeTRVpJwgFyy8tYjGhN0XKeeC8zvlamh/WZV6T7dKqUXERfxRZl4q8EKBJ1bKStFCqxSqOkba7FKzIakCbWsYg+cKxPrPfW25fI0qWxv8N/SblJkxNTyUVyQfPocHrd6XPNjE75O1xQ9MxKwbEjOzDwAAAAAAAAAAAAAAwEb+AL4mLo+9NiX6AAAAAElFTkSuQmCC',
      ),
      BrandModel(
        name: 'BMW',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgbcpHTW6w3KT7Ko8oJN0haJCJRTWpI6mAyxTVOnyK5A&s=10',
      ),
      BrandModel(
        name: 'Mazda',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTQHaLgICCDZuGqr9-jCGaHUH9vLOZ7kbAGN48p_TZ2w&s=10',
      ),
      BrandModel(
        name: 'Audi',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2PadEzCe-Yk_ywtwgjer4CJvITxA3jn4bbMNDopZtOQ&s=10',
      ),
      BrandModel(
        name: 'Ford',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwRES4DBFbRqhIiYCTTYVVej0LWi2oHzQwFtrGM09LSw&s=10',
      ),
      BrandModel(
        name: 'Jaguar',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXa97W7jwDJ011NT_FpgwNWI1mk-8IfJXztssXc9zNQg&s=10',
      ),
      BrandModel(
        name: 'Mercedes',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyyrtilf4ap_A0V1YMr9WChdoB_Tmup-riEFLLSSmmLw&s=10',
      ),
      BrandModel(
        name: 'Ferrari',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY-9yPOslKzAN_xT5G-IZAroSIqPLlNw7Jl1EXsRHlbQ&s=10',
      ),
      BrandModel(
        name: 'Hyundai ',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYEWwVx0d_ZS13MaSC1F-ihhytA1xvci8IzUU6xIO7kQ&s=10',
      ),
      BrandModel(
        name: 'Cadillac',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnwQgeEoW6wI4CLbadBNz4LfhuGiFyBghyxIGaYjk1ro5Q57nyQc7UilA&s',
      ),
      BrandModel(
        name: 'Tesla',
        logoUrl:
            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJQAAACUCAMAAABC4vDmAAAAY1BMVEUAAAD////29vbPz89VVVViYmLDw8Pu7u76+vpaWlrGxsYyMjKcnJxISEipqanq6uqLi4uwsLA9PT3h4eEqKiohISGFhYWioqJPT0+5ubkPDw/W1tYWFhZ3d3eVlZU3NzdsbGyiwMtgAAAD6klEQVR4nO2a6ZKjIBCAjfcZVIyJ4vX+T7kcopBjpzK1KFvV368QnPGLQrcNOg4AAAAAAAAAAAAAAADgOH1TFw/ffxR105/tQmX88hoSjBGKOAhhTMJr6Z8j1wRlRdzLR1xSlUFzoNBQTATFn4UkMSJTMRxhNLcd0q8JJmnXVZyuSwnWrx/q2tms0W1Mo/1CROwW0cE9KAOoH251wW5ttF/KKB1vxpSCbjOKqU8hvs0ehXpQ8cjWD9RsE4u6wJBULs8QjjO9OE093j0cuW607McsrI2961jTUd7PYyh/x92QVB/z3zw67D5evf1GutuoyfYBFVEzdtdGcX2NDfj8Qlp6nnryXH3ykXXM3Ig+/Vxvqum3LTF2oVhwomcovTfhKRQHhK89sVdSY6MhK6k+xKec9ebv++IqMajkON7701LoSBs/dnpGpTLFykWYeGkoQ2ldrx9QmnoEI+Umk8yolNNgeaIyyXjQvK9fYNkzsW/7LCjlqMfGc+BQ7WfmvNy0ZeuaeLs6Iv219IalezN5lvL3vpSGq/YAJUaOlDMVTxEiqve+FuUHKVFmZZRkWJciap/hB4TPpLpUeJaHRqdLVWf7cJ7i+PTzXxzAU0xYzvbh1JpTfGS18Be0HB2fbbOixQR8ts2KFhPsiAhP08+Oyfc0/cazbVbUlBz7Px9/CMVe11yi4ufjD6FRahhirhb+EmX6pT8ffRDVLnU922Vjsi8iOM6yS5lax/ieeZcyXEx9w5aS3bNNFLaUbEs6ZmwLG7akY8aWku2ZfEpKXs42UdhSstk1n++QKRnZko4ZclnRnnTMSO2bfFuVbEd1LCmFVHm2h0Zi3+RznEFInb8FqcFTsi3VsQTblo4ZoX0RYX0itikdM3hKtqU6liR0pMd2RQSakpFl6ZjBUrJd6ZiR2lQdS662pWNGa1s6ZvjaTpElDAY31H9PfDnb4A3YtnTMCG1Lx4zc3PsQv6c9al/2G3z7IoLj9JY9oAMAAAD/EznxJKy8W/DaILwsbmVvyDZnGk95YphlF/n3ry0V21ZHzpOcfDnP48UerWViyiXiirNWbckXHrGBWvVWZ0scNrV8JSoTiMb1MjasJcpRXUoeaegR/hF38mOxBIKlEFLl2r69SAWJIKif/98/l5K7aWJVY9uw5bvtmlS/7QWaeTRVpJwgFyy8tYjGhN0XKeeC8zvlamh/WZV6T7dKqUXERfxRZl4q8EKBJ1bKStFCqxSqOkba7FKzIakCbWsYg+cKxPrPfW25fI0qWxv8N/SblJkxNTyUVyQfPocHrd6XPNjE75O1xQ9MxKwbEjOzDwAAAAAAAAAAAAAAwEb+AL4mLo+9NiX6AAAAAElFTkSuQmCC',
      ),
      BrandModel(
        name: 'BMW',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgbcpHTW6w3KT7Ko8oJN0haJCJRTWpI6mAyxTVOnyK5A&s=10',
      ),
      BrandModel(
        name: 'Mazda',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTQHaLgICCDZuGqr9-jCGaHUH9vLOZ7kbAGN48p_TZ2w&s=10',
      ),
      BrandModel(
        name: 'Audi',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2PadEzCe-Yk_ywtwgjer4CJvITxA3jn4bbMNDopZtOQ&s=10',
      ),
      BrandModel(
        name: 'Ford',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwRES4DBFbRqhIiYCTTYVVej0LWi2oHzQwFtrGM09LSw&s=10',
      ),
      BrandModel(
        name: 'Jaguar',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXa97W7jwDJ011NT_FpgwNWI1mk-8IfJXztssXc9zNQg&s=10',
      ),
      BrandModel(
        name: 'Mercedes',
        logoUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyyrtilf4ap_A0V1YMr9WChdoB_Tmup-riEFLLSSmmLw&s=10',
      ),
    ];

    final List<CarModel> dummyCars = [
      CarModel(
        name: 'Tesla Model 3',
        price: '\$45,590',
        rating: '4.5',
        imageUrl:
            'https://images.unsplash.com/photo-1727571377496-7016f0b3c9dc?q=80&w=1824&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Model X',
        price: '\$25,680',
        rating: '4.8',
        imageUrl:
            'https://images.unsplash.com/photo-1724084202591-24080fd00e32?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Sedan White',
        price: '\$38,200',
        rating: '4.6',
        imageUrl:
            'https://images.unsplash.com/photo-1658030074520-74e1acd0865c?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Cyber SUV',
        price: '\$59,990',
        rating: '4.9',
        imageUrl:
            'https://images.unsplash.com/photo-1727994527246-68e26082d0fd?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Model 3',
        price: '\$45,590',
        rating: '4.5',
        imageUrl:
            'https://images.unsplash.com/photo-1727571377496-7016f0b3c9dc?q=80&w=1824&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Model X',
        price: '\$25,680',
        rating: '4.8',
        imageUrl:
            'https://images.unsplash.com/photo-1724084202591-24080fd00e32?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Sedan White',
        price: '\$38,200',
        rating: '4.6',
        imageUrl:
            'https://images.unsplash.com/photo-1658030074520-74e1acd0865c?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Cyber SUV',
        price: '\$59,990',
        rating: '4.9',
        imageUrl:
            'https://images.unsplash.com/photo-1727994527246-68e26082d0fd?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Model 3',
        price: '\$45,590',
        rating: '4.5',
        imageUrl:
            'https://images.unsplash.com/photo-1727571377496-7016f0b3c9dc?q=80&w=1824&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Model X',
        price: '\$25,680',
        rating: '4.8',
        imageUrl:
            'https://images.unsplash.com/photo-1724084202591-24080fd00e32?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Sedan White',
        price: '\$38,200',
        rating: '4.6',
        imageUrl:
            'https://images.unsplash.com/photo-1658030074520-74e1acd0865c?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Model 3',
        price: '\$45,590',
        rating: '4.5',
        imageUrl:
            'https://images.unsplash.com/photo-1727571377496-7016f0b3c9dc?q=80&w=1824&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Model X',
        price: '\$25,680',
        rating: '4.8',
        imageUrl:
            'https://images.unsplash.com/photo-1724084202591-24080fd00e32?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      CarModel(
        name: 'Tesla Sedan White',
        price: '\$38,200',
        rating: '4.6',
        imageUrl:
            'https://images.unsplash.com/photo-1658030074520-74e1acd0865c?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      appBar: const CustomAppBar(),
      bottomNavigationBar: const AnimatedNavBar(),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchBar(),
              const SizedBox(height: 10),
              BrandListView(brands: dummyBrands),
              const SizedBox(height: 20),

              PopularCarsList(cars: dummyCars),
            ],
          ),
        ),
      ),
    );
  }
}
