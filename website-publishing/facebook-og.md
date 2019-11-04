# Open Graph Markup

Most content is shared to Facebook as a URL, so it's important that you mark up your website with Open Graph tags to take control over how your content appears on Facebook.

Without these tags, the Facebook Crawler uses internal heuristics to make a best guess about the title, description, and preview image for your content. Designate this info explicitly with Open Graph tags to ensure the highest quality posts on Facebook.

Here's an example of content formatted with Open Graph tags for optimal display on Facebook:

![](https://neilpatel.com/wp-content/uploads/2014/03/Facebook-2014-03-03.jpg)

## Markup Example

For example, here's how to mark up an article, news story or blog post with `og:type="article"`and several additional properties:

```html
<meta property="og:url" content="http://www.nytimes.com/2015/02/19/arts/international/when-great-minds-dont-think-alike.html" />
<meta property="og:type" content="article" />
<meta property="og:title" content="When Great Minds Don’t Think Alike" />
<meta property="og:description" content="How much does culture influence creative thinking?" />
<meta property="og:image" content="http://static01.nyt.com/images/2015/02/19/arts/international/19iht-btnumbers19A/19iht-btnumbers19A-facebookJumbo-v2.jpg" />
```

## Basic Tags

These are the most basic meta tags that you should use for all content types:

|   Tag | Description  |
|---|---|
| `og:url` |  The canonical URL for your page. This should be the undecorated URL, without session variables, user identifying parameters, or counters. Likes and Shares for this URL will aggregate at this URL. For example, mobile domain URLs should point to the desktop version of the URL as the canonical URL to aggregate Likes and Shares across different versions of the page. |
|  `og:title` | The title of your article without any branding such as your site name. It should be 50-60 characters. |
|  `og:description` | A brief description of the content, usually between 2 and 4 sentences. This will displayed below the title of the post on Facebook. It should be about 155 characters. |
|  `og:image` |  The URL of the image that appears when someone shares the content to Facebook. See below for more info, and check out our best practices guide to learn how to specify a high quality preview image. |
|  `fb:app_id` |  In order to use Facebook Insights you must add the app ID to your page. Insights lets you view analytics for traffic to your site from Facebook. Find the app ID in your App Dashboard. |


## Test Your Markup

To see how your markup appears to the Facebook Crawler enter a URL into [Sharing Debugger](https://developers.facebook.com/tools/debug/sharing/). It will show which meta tags the crawler scrapes as well as any errors or warnings.

## Media Content Types

You can add additional markup if your content includes audio, video, or location information. See all standard object properties in our Object Types Reference.

### Video

You can use `og:video` for all content types. This section describes how to use additional tags to optimize the look of videos on Facebook. Facebook supports both mp4 and Flash videos.

Use a secure URL for both the `og:video:url` and `og:video:secure_url` tags to make your video eligible to play in-line in News Feed. Note that your video is not guaranteed to play in-line based on a variety of factors.

|   Meta tag | Description  |
|---|---|
| `og:video` | The URL for the video. If you want the video to play in-line in News Feed, you should use the https:// URL if possible. |
|  `og:video:url` |  Equivalent to `og:video`.  |
|  `og:video:secure_url` | Secure URL for the video. Include this even if you set the secure URL in `og:video`.  |
|  `og:video:type` |  MIME type of the video. Either `application/x-shockwave-flash` or `video/mp4`. |
|  `fb:video:width` |  Width of video in pixels. This property is required for videos. |
|  `fb:video:height` |  Height of video in pixels. This property is required for videos. |
|  `fb:image` |  Specify an image for a high quality preview in News Feed. |

### Images

Use this set of properties for content that contains more than one image. See Sharing Best Practices for guidance on how best to use `og:image`.

|   Meta tag | Description  |
|---|---|
| `og:image` | URL for the image. To update an image after it's been published, use a new URL for the new image. **Images are cached based on the URL and won't be updated unless the URL changes.** |
|  `og:image:url` |  Equivalent to `og:image`.  |
|  `og:image:secure_url` | Secure URL for the image. Include this even if you set the secure URL in `og:image`.  |
|  `og:image:type` |  MIME type of the image. One of `image/jpeg`, `image/gif` or `image/png` |
|  `fb:image:width` | Width of image in pixels. Specify height and width for your image to ensure that the image loads properly the first time it's shared. |
|  `fb:image:height` |  Height of image in pixels. Specify height and width for your image to ensure that the image loads properly the first time it's shared. |

# Images in Link Shares

## Requirements

* The minimum allowed image dimension is 200 x 200 pixels.
* The size of the image file must not exceed 8 MB.
* Use images that are at least 1200 x 630 pixels for the best display on high resolution devices. At the minimum, you should use images that are 600 x 315 pixels to display link page posts with larger images.

<div style="text-align:center"><img src="https://enlighten.pl/dev/mk/enl-docs/images/og-image1.png" /></div>

* If your image is smaller than 600 x 315 px, it will still display in the link page post, but the size will be much smaller.

<div style="text-align:center"><img src="https://enlighten.pl/dev/mk/enl-docs/images/og-image2.png" /></div>


* We've also re-designed link page posts so that the aspect ratio for images is the same across desktop and mobile News Feed. Try to keep your images as close to 1.91:1 aspect ratio as possible to display the full image in News Feed without any cropping.
* Our crawler only accepts **gzip** and **deflate** encodings, so make sure your server uses the right encoding.


## Pre-caching images

When content is shared for the first time, the Facebook crawler will scrape and cache the metadata from the URL shared. The crawler has to see an image at least once before it can be rendered. This means that the first person who shares a piece of content won't see a rendered image.

!> To avoid this and have images render on the first Like or Share action pre-cache the image with the [Sharing Debugger](https://developers.facebook.com/tools/debug/sharing/)