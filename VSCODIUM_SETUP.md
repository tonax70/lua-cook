# VSCodium Switched from Open VSX to MS Marketplace

> Because some major ms extensions are missed from from vscodium, which uses open vsx, which doesnt provide official extensions from microsoft

--

> tut for windows

1. press `win + r`
2. type `%appdata%`
3. goto `VSCodium`
4. create a file named `product.json` if not exist
5. paste this code:

```json
{
  "extensionsGallery": {
    "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
    "cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",
    "itemUrl": "https://marketplace.visualstudio.com/items"
  }
}
```

6. Save the file, restart vscodium and cook code