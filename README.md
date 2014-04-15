YLGIFImage
==========

Asynchronized GIF image class and Image viewer supporting play/stop GIF images. 

It just use very less memory. Following GIF usually will cost almost 600MB memory if it is fully decoded (800x600x389x4 Bytes), but using YLGIFImage, it just use about 30MB memory.

<img src="./YLGIFImageDemo/YLGIFImageDemo/joy.gif" align="middle" width="320" />

For this gif file, iOS Pinterest also will crash, but using YLGIFImage, it won't!

####Get Start
Using [CocoaPods](http://cocoapods.org/) to get start, you can add following line to your Podfile:
    
    pod 'YLGIFImage'

####Using it
For using YLGIFImage, it's very simple:

    YLImageView* imageView = [[YLImageView alloc] initWithFrame:CGRectMake(0, 160, 320, 240)];
    [self.view addSubview:imageView];
    imageView.image = [YLGIFImage imageNamed:@"joy.gif"];

Here is the demo looks like:


<img align="middle" src="./screenshot.png" width="320" />

Thanks
==========
Thanks to [OLImageView](https://github.com/ondalabs/OLImageView)! I referred a lot to this project, especially using CADisplayLink to play the animation.
