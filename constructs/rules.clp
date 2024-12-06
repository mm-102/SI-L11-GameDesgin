(defrule oczy-siersc
    (umaszczenie ?imie ?kolor)
    (oczy ?imie ?kolor)
    =>
    (printout t ?imie " ma taki sam kolor oczu i umaszczenia: " ?kolor crlf)
)

(defrule umaszczenie-nie-czarne
    (umaszczenie ?imie ~czarne)
    =>
    (printout t ?imie " ma nie-czarne umaszczenie" crlf)
)

(defrule umaszczenie-nie-czarne-ani-plowe
    (umaszczenie ?imie ~czarne&~plowe)
    =>
    (printout t ?imie " ma nie czarne ani plowe umaszczenie" crlf)
)

(defrule umaszczenie-czarne-lub-plowe
    (umaszczenie ?imie ?kolor&czarne|plowe)
    =>
    (printout t ?imie " ma czarne lub plowe umaszczenie: " ?kolor crlf)
)

(defrule umaszczenie-czarne-lub-oczy
    (oczy ?imie ?o)
    (umaszczenie ?imie ?kolor&?o|czarne)
    =>
    (printout t ?imie " ma umaszczenie czarne lub w kolorze oczu: " ?kolor crlf)
)