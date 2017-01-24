Not commutative (hmmm... but this is associative....):

    Config + Config -> config

      { times = 1, input = stdin, munge = no }
    + { times = 2, input =      , munge =    } 
    = { times = 2, input = stdin, munge = no } 

Has identity:    

      { times = 1, input = stdin, munge = no }
    + { times =  , input =      , munge =    } 
    = { times = 1, input = stdin, munge = no } 

let e = { times =  , input =      , munge =    } 
    then e + x = x

Can you have a single operation with different identites?

equivalance relations:

* transitive
* reflexive
* symmetric

Order relations:

1. Anti-symmetric: $A > B$ and $B > A \Rightarrow A = B$
1. Non-?! Anti-symmetric:
    $\exists A, B: A > B$ and $B > A $ but $ A \ne B$
1. Reflexive: $A > A$
1. Transitive: $A > B, B > C \Rightarrow A > C$

Posets don't have a totalling ordering

Huh. Never heard or pre-orders before

What is the motivation for preorders?
`
