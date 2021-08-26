# slideparallax

Scrollview parallax inspired by the Tokopedia & Bukalapak application.  

## Usage

```dart
SlideParallax(
    header: Image.network(
        'https://images.tokopedia.net/img/cache/240/PYbRbC/2021/8/6/d1c4b788-27f3-463d-b40c-d2b1a6c845df.png.webp?ect=4g',
        height: 300,
    ),
    height: 300,
    width: MediaQuery.of(context).size.width,
    // headerSpacing: 150,
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
        return Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                width: 150,
                color: Colors.red,
            ),
        );
    },
    footer: ElevatedButton(
        onPressed: () {
                print('object');
            },
        child: Text('Lainnya')
    ),
),
```

## Demo
![slideparallax](https://raw.githubusercontent.com/muhammadsaddamnur/slideparallax/main/slideparallax.gif)

## Support me on Saweria
[https://saweria.co/saddamnur](https://saweria.co/saddamnur)

![saweria](https://raw.githubusercontent.com/muhammadsaddamnur/slideparallax/main/saweria.png)