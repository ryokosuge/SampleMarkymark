# H1
## H2
### H3
#### H4
##### H5
###### H6

texttexttexttext

**bold**
__bold__

*italic*
_italic_

- list
- list

* list
* list

1. list
2. list

a. list
b. list

[link](https://google.com)

![image](https://cdn-images-1.medium.com/max/2000/1*1DIsIDhrKJ2698uc9FXEDg.jpeg)

Photo by Gustas [Brazaitis](https://unsplash.com/photos/xNKy-Cu20d4) on [Unsplash](https://unsplash.com/search/photos/xcode)

> quote
> quote

`inline code`

```
block code
```

```
guard let url = Bundle.main.url(forResource: "sample", withExtension: "md"),
    let data = try? Data(contentsOf: url),
    let string = String(data: data, encoding: .utf8) else {
        return
}

let styling = DefaultStyling()
styling.paragraphStyling.textColor = UIColor.darkText
styling.paragraphStyling.contentInsets = UIEdgeInsets(top: 0, left: 8, bottom: 8, right: 8)

let view = MarkDownTextView(styling: styling)
view.text = string
view.translatesAutoresizingMaskIntoConstraints = false

let urlOpener = CustomURLOpener()
urlOpener.displayViewController = self
view.urlOpener = urlOpener

if let containerView = self.containerView {
    containerView.addSubview(view)
    view.topAnchor.constraint(equalToSystemSpacingBelow: containerView.topAnchor, multiplier: 0).isActive = true
    view.leadingAnchor.constraint(equalToSystemSpacingAfter: containerView.leadingAnchor, multiplier: 0).isActive = true
    containerView.trailingAnchor.constraint(equalToSystemSpacingAfter: view.trailingAnchor, multiplier: 0).isActive = true
    containerView.bottomAnchor.constraint(equalToSystemSpacingBelow: view.bottomAnchor, multiplier: 0).isActive = true
}
```
