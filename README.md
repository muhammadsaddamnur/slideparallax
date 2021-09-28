
  ![slideparallax](https://img.shields.io/pub/v/slideparallax.svg) ![enter image description here](https://badges.bar/slideparallax/likes) ![enter image description here](https://badges.bar/slideparallax/popularity) ![enter image description here](https://badges.bar/slideparallax/pub%20points) ![enter image description here](https://img.shields.io/github/stars/muhammadsaddamnur/slideparallax.svg?style=flat&logo=github&colorB=deeppink&label=stars)  ![enter image description here](https://img.shields.io/badge/license-MIT-purple.svg) 

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



## Support Me 🙏

  

<a  href="https://www.buymeacoffee.com/saddamnur">![buymeacoffee.com/saddamnur](https://www.buymeacoffee.com/assets/img/guidelines/download-assets-sm-1.svg)</a>

  

<b> Bisa pake Gopay, Dana, Link Aja, OVO, dan QRIS loh gaes.... </b>

<b>klik gambar dibawah ya </b>

<a  href="https://saweria.co/saddamnur">![enter image description here](https://raw.githubusercontent.com/muhammadsaddamnur/float_bubble/main/saweria.png)</a>