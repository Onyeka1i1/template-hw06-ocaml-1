open! Src.Cs17_setup_hw06

(* evens_only : list(int) -> list(int)
    Input(s): alon ~ an int list
    Output(s): the int list of the elements of alon that are even.
  
    Recurion Diagram(s)

    OI: [0; 1; 2; 3; 4; 5]
     RI: [1; 2; 3; 4; 5]
     RO: [2; 4]
    OO: [0; 2; 4] 
*)

let rec evens_only = function
  | [] -> []
  | first :: rest -> if (first / 2) * 2 = first then first :: evens_only rest
                     else evens_only rest ;;

(* Test Cases for evens_only *)
check_expect_int_list (evens_only [0; 1; 2; 3; 4; 5], [0; 2; 4], "Test Case 1") ;;
check_expect_int_list (evens_only [], [], "Empty Test Case") ;;
check_expect_int_list (evens_only [1; 3; 5], [], "No Evens Testing") ;;
check_expect_int_list (evens_only [2; 4; 6], [2; 4; 6], "Everything is Even") ;;
check_expect_int_list (evens_only [-4; -3; 7; 10], [-4; 10], "Some negatives") ;;