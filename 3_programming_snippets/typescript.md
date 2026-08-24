---
tags:
  - programming-snippets
---
# typescript

## promises and async await

anything that returns **Promise** can be **await**ed

**GetWeatherIcon** returns this:

```typescript
: Promise<string>
```

```typescript
// PROMISE - WITH .catch FOR HANDLING ERROR
getWeatherIcon()
  .then((response) => {
    console.log(response);
  })
  .catch((error) => {
    console.error(error);
  });
```

```typescript
// ASYNC AWAIT - WITH TRY CATCH FOR HANDLING ERROR
try {
  const icon = await getWeatherIcon("Sunny");
  console.log(icon);
} catch (error) {
  console.error(error);
}
```

It is important to catch error, otherwise server crashes.

## children props

```typescript
// for elements only. stricter.
React.JSX.Element;

// for texts and elements
React.ReactNode;

// example
type ModalButtonProps = {
  modalButtonText: string;
  children: React.ReactNode;
} & React.ComponentPropsWithoutRef<"input">;
```

## text and element prop in react

```typescript
export type IncrementButtonProps {
  React.ReactNode
}
```

## getting object keys value types as type in typescript

```typescript
const gameLocations = {
  main_world: "/main_world",
  nether: "/nether",
  forest: "/forest",
} as const;

type TypeOfGameLocations = (typeof gameLocations)[keyof typeof gameLocations];
```

## nullish coalescing

**||** (Logical OR):
Returns the first truthy value. Treats "" and 0 as falsy, so it will skip them.

**??** (Nullish Coalescing):
Returns the first value that is not null or undefined. Treats "" and 0 as valid
(not nullish), so it will return them.

```typescript
const specificTaxAmount = "";
```

```typescript
const order = {
  taxAmount: specificTaxAmount ?? 20,
};
```

## shallow vs deep copy

```typescript
const arr1 = [1, 2, 3, 4, 5];
const arr2 = [9, 10];

const shallowCopy = [...arr1, ...arr2];
const deepCopy = structuredClone([...arr1, ...arr2]);

console.log(`shallow copy: ${shallowCopy}`);
console.log(`deep copy: ${deepCopy}`);
```
