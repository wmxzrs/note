---
description: 'css,scss,sass etc.'
---

# css

定位（Position）

`position: static | absolute | relative | sticky`

`position` 属性有大致以上几个常用的值，其中，`static` 值是默认的且不能通过`z-index`属性层次分级。

`absolute` 值是绝对定位，通过`top` 、`right` 、`botttom` 、`left` 这些偏移属性来具体定位。并脱离文档流，定位基点是父元素，其中一个限制条件是，定位基点的定位属性不能是`static`默认定位，否则定位基点就变成整个网页的根元素`<html></html>`**被定位的对象参照上一级被定位的父容器来偏移（距离最近的定位祖先元素），如果没有被定位的父容器则回溯到body**。它的偏移属性产生的偏移不影响常规流中的元素。盒子模型中，它的`margin: auto`也会失效;`margin` 不与其他任何`margin` 折叠。

`relative`值是相对定位，也通过`top` 、`right` 、`bottom` 、`left`这些偏移属性来具体定位。但是不脱离文档流，相对定位指的是相对于定位前元素所在的位置（static），也就是说**被被定位的对象参照自身静态位置进行定位，原有位置依然占用空间**。
详细叙述来说就是定位基点是默认的`static`定位属性，使用偏移属性进行位置调整后，原`static`位置空间依然保留且占用空间。

`fixed`属性，脱离文档流，参照浏览器窗口进行定位（viewport），搭配`top` 、`right` 、`botttom` 、`left` 四个属性，表示元素的初始位置是基于视口计算的，否则初始位置就是元素的默认位置。

`sticky`和前面的属性都不一样，它会产生动态效果，很像`relative`,`fixed`的结合。一些时候是`relative`定位，（定位基点是自身默认位置），另一些时候自动变成`fixed`定位（定位基点是视口）。因此，它能够形成“动态固定”的效果，比如，网页的搜索栏初始加载在自身位置（relative定位），页面向下滚动时，搜索栏变成固定位置，始终停留在页面头部（fixed定位）。
等到页面重新向上滚动时，搜索栏也会回到默认位置，`sticky`生效的前提是必须搭配`top` 、`right` 、`botttom` 、`left` 偏移属性使用，不能省略。

它的具体规则是，当页面滚动，父元素开始脱离视口（即部分不可见），只要与`sticky`元素的距离达到生效门槛，`relative`定位自动切换为`fixed`定位；等到父元素完全脱离视口（即完全不可见），`fixed`定位自动切换为`relative`定位。

CSS at-rules规则的使用（@Rules）

| 规则 | 类型 | 作用 | 备注 |
| ------ | ------ | ------ | ------ |
| `@charset` | 常用规则 | 定义样式表使用的字符集 | http head中`<meta charset="utf-8">`将覆盖该内容 |
| `@import` | 常用规则 | 从其他样式表导入样式的规则 | 导入的规则（不导入@charset）优先于其他规则 |
| `@namespace` | 常用规则 | | |
| `@media` | 嵌套规则 | 根据媒体类型进行响应式布局 | |
| `@page` | 嵌套规则 | 打印文档的css属性 | |
| `@font-face` | 嵌套规则 | 自定义字体 | |
| `@keyframes` | 嵌套规则 | 声明CSS3 animation动画关键帧 | |
| `@supports` | 嵌套规则 | 是否支持某css属性声明| |
| `@documents` | 嵌套规则 | 指定适用于特定的页面/为用户定位的样式表| |

**``@import``**

`@import <url> <media_query_list>`
`<media_query_list>`: [<media_query>[',' <media_query>]*]?

**``@media``**

**``@keyframes``**
