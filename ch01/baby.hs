doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100 then x else doubleMe x

doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x ]

length' xs = sum [ 1 | _ <- xs ]

removeNonUpperCase st = [ c | c <- st, c `elem` ['A'..'Z'] ]

xxs = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]

z = [ [ x | x <- xs, even x ] | xs <- xxs ]

rightTriples =
  [(a, b, c) |
    c <- [1..10], a <- [1..c], b <- [1..a],
    a^2 + b^2 == c^2,
    a + b + c == 24
  ]
