on(floor,monkey).
on(floor,monkey).
in(room,monkey).
in(room,box).
in(room,banana).
at(ceiling,banana).

strong(monkey).
grasp(monkey).
climb(monkey,box).

push1(monkey,box) :- strong(monkey).
under(banana,box) :- push1(monkey,box).
canreach(banana,monkey) :- at(ceiling,banana),under(banana,box),climb(monkey,box).
canget(banana,monkey) :- canreach(banana,monkey),grasp(monkey).
