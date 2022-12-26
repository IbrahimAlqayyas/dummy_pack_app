import 'package:flutter/material.dart';

class PaymentHomeView extends StatelessWidget {
  final bool? enableWoqodyPay;
  final bool? enableMada;
  final bool? enableCash;
  final bool? enableApplePay;

  const PaymentHomeView({
    Key? key,
    this.enableWoqodyPay,
    this.enableApplePay,
    this.enableCash,
    this.enableMada,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle titleTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 18,
    );

    Color containerColor = Colors.black.withOpacity(0.9);
    Color iconColor = Colors.white;

    BoxDecoration containerDecoration = BoxDecoration(
      gradient: const LinearGradient(
        colors: [Colors.black, Colors.black54],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(7),
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.4),
          blurRadius: 3,
        )
      ],
      border: Border.all(
        width: 1,
        color: Colors.white.withOpacity(0.1),
      ),
    );

    int containerWidth = 200;

    double opacity = 1.0;

    return Material(
      child: Scaffold(
        backgroundColor: Colors.teal.withOpacity(0.0),
        appBar: AppBar(
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const SizedBox(
              width: 50,
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          title: const Text('Payment Pack'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            if (enableWoqodyPay == null && enableMada == null && enableCash == null && enableApplePay == null)
              const Center(
                child: Text('You didn\'t choose any payment method'),
              ),

            /// WQ Pay
            if (enableWoqodyPay == true)
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DummyScreen(
                      title: 'Woqody Pay',
                      image: Image.network(
                        'https://supportboard.woqody.tech/uploads/17-12-22/28319_W.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                child: Opacity(
                  opacity: opacity,
                  child: Container(
                    height: 65,
                    width: containerWidth.toDouble(),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
                    decoration: containerDecoration,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.network(
                            'https://supportboard.woqody.tech/uploads/17-12-22/28319_W.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Woqody Pay',
                          textAlign: TextAlign.center,
                          style: titleTextStyle,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: iconColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            /// Mada
            if (enableMada == true)
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DummyScreen(
                        title: 'Mada',
                        image: Image.network(
                          'https://pbs.twimg.com/profile_images/1310113497838166017/fgLWC_l3_400x400.jpg',
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                child: Opacity(
                  opacity: opacity,
                  child: Container(
                    height: 65,
                    width: containerWidth.toDouble(),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
                    decoration: containerDecoration,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.network(
                            'https://pbs.twimg.com/profile_images/1310113497838166017/fgLWC_l3_400x400.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Mada',
                          textAlign: TextAlign.center,
                          style: titleTextStyle,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: iconColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            /// Cash
            if (enableCash == true)
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DummyScreen(
                      title: 'Cash',
                      image: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/2489/2489756.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                child: Opacity(
                  opacity: opacity,
                  child: Container(
                    height: 65,
                    width: containerWidth.toDouble(),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
                    decoration: containerDecoration,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/2489/2489756.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Cash',
                          textAlign: TextAlign.center,
                          style: titleTextStyle,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: iconColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            /// Apple Pay
            if (enableApplePay == true)
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DummyScreen(
                      title: 'Apple Pay',
                      image: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/5968/5968279.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                child: Opacity(
                  opacity: opacity,
                  child: Container(
                    height: 65,
                    width: containerWidth.toDouble(),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
                    decoration: containerDecoration,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/5968/5968279.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Apple Pay',
                          textAlign: TextAlign.center,
                          style: titleTextStyle,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: iconColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class DummyScreen extends StatelessWidget {
  final String title;
  final Image image;
  const DummyScreen({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black,
        child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: const SizedBox(
                width: 50,
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 40, width: 40, child: image),
                const SizedBox(width: 8),
                Text(title),
              ],
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 150),
                SizedBox(height: 50, width: 50, child: image),
                Text(
                  '$title Screen',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
