open! Src.Cs17_setup_hw06;;

(* 
pairs : list(string) -> (string * string) list
    Input(s): L ~ a string list
    Output(s): a string * string list where for each element x of L there is an element (x,x) of the output.
 
    Recurion Diagram(s)
        OI: ["I"; "love"; "cs17"]
         RI: ["love"; "cs17"]
         RO: [("love", "love"); ("cs17", "cs17")]
        OO: [("I", "I"); ("love", "love"); ("cs17", "cs17")] 
 *)
 
let rec pairs = function
  | [] -> []
  | first :: rest -> (first, first) :: pairs rest ;;
 
(* Test Cases for pairs *)
check_expect_string_pair_list (pairs ["I"; "love"; "cs17"],
                               [("I", "I"); ("love", "love"); ("cs17", "cs17")],
                               "Test Case 1") ;;
check_expect_string_pair_list (pairs [], [], "empty list case") ;;
check_expect_string_pair_list (pairs ["hi"], [("hi", "hi")], "one string case") ;;
check_expect_string_pair_list (pairs [""; "a"], [("", ""); ("a", "a")], "empty string case") ;;
 