---
tags:
  - programming
---
# API design

## RESTful API convention

**GET**, **POST**, **PUT**, **PATCH**, **DELETE** HTTP methods should **not** be in the name of the backend URL.
URL should identifiy **resource**, not HTTP method.
this is wrong: `/getOrders/x39j439ij324j`

**correct URLs**

`/orders`
for findAll orders

`/orders/x39j439ij324j/items`
for findAll of items that are in order

use hyphens (-) for multiple word URLs
`/orders/x39j439ij324j/active-items`
