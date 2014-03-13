YLGIFImage
==========

Asynchronized GIF image class and Image viewer supporting play/stop GIF images. 

It just use very less memory. Following GIF usually will cost almost 600MB memory if it is fully decoded (800x600x389x4 Bytes), but using YLGIFImage, it just use about 30MB memory.

->![Joy](./YLGIFImageDemo/YLGIFImageDemo/joy.gif =320x240)<-

For this gif file, iOS Pinterest also will crash, but using YLGIFImage, it won't!

####Using it
For using YLGIFImage, it's very simple:

    YLImageView* imageView = [[YLImageView alloc] initWithFrame:CGRectMake(0, 160, 320, 240)];
    [self.view addSubview:imageView];
    imageView.image = [YLGIFImage imageNamed:@"joy.gif"];

Here is the demo looks like:

->![Screenshot](./screenshot.png =320x568)<-

Thanks
==========
Thanks to [OLImageView](https://github.com/ondalabs/OLImageView)! I referred a lot to this project, especially using NSDisplay.