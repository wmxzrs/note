---
description: 'css,scss,sass etc.'
---

# css

定位（Position）

`position: static | absolute | relative | sticky`

`position` 属性有大致以上几个常用的值，其中，`static` 值是默认的。

`absolute` 值是绝对定位，通过`top` 、`right` 、`botttom` 、`left` 这些这些偏移属性来具体定位。并脱离文档流，**被定位的对象参照上一级被定位的父容器来偏移（距离最近的定位祖先元素），如果没有被定位的父容器则回溯到body**。它的偏移属性产生的偏移不影响常规流中的元素。盒子模型中，它的`margin: auto`也会失效;`margin` 不与其他任何`margin` 折叠。

\*\*\*\*

