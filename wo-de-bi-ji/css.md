---
description: 'css,scss,sass etc.'
---

# css

定位（Position）

`position: static | absolute | relative | sticky`

`position` 属性有大致以上几个常用的值，其中，`static` 值是默认的且不能通过`z-index`属性层次分级。

`absolute` 值是绝对定位，通过`top` 、`right` 、`botttom` 、`left` 这些偏移属性来具体定位。并脱离文档流，**被定位的对象参照上一级被定位的父容器来偏移（距离最近的定位祖先元素），如果没有被定位的父容器则回溯到body**。它的偏移属性产生的偏移不影响常规流中的元素。盒子模型中，它的`margin: auto`也会失效;`margin` 不与其他任何`margin` 折叠。

`relative`值是相对定位，也通过`top` 、`right` 、`botttom` 、`left`这些偏移属性来具体定位。但是不脱离文档流，相对定位指的是相对于定位前元素所在的位置（static），也就是说**被被定位的对象参照自身静态位置进行定位，原有位置依然占用空间**。

`fixed`属性，脱离文档流，相对于

