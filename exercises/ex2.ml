(*
   Now it's time look at a more real-world example!

   For the rest of this tutorial we are going to work on an
   application that monitors the state and the health of a collection
   of machines, e.g. all boxes in a datacenter.

   To understand the setup, take a look at *shared/protocol.ml* which
   contain the protocol that the client receives from the server.

   You do not need to look at [shared/server.ml] or
   [shared/generator.ml] in any detail.

   As a first simple query, we would like to keep track of the
   following information:

   total number of checks that passed / total number of checks run

   (This is across all hosts.)

   Of course, if you actually had to do this, you would just keep
   track of two integers, rather than using anything in
   Incremental. But for the purpose of this exercise, let's do this by
   building up state that keeps track of all checks and their
   outcome. Every time we update the state we also iterate over it to
   find the updated answer.

   For a non-incremental implementation, take a look at
   shared/client.ml:Passed_tests_over_total_tests. You can run this
   with:

   ./_build/exercises/main.exe server -port 8080 &

   ./_build/exercises/main.exe client -port 8080 -which-query passed-checks

   The goal of this exercise is to write a version of this query that
   uses Incremental.
*)
