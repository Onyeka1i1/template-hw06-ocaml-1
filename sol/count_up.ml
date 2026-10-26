open! Src.Cs17_setup_hw06;;

(* 
count_up : int -> list(int)
    Input(s): n ~ a nonnegative int
    Output(s): the int list with n at the end 
 
    Recurion Diagram(s)
        OI: 3
          RI: 2
          RO: [1; 2]
        OO: [1; 2; 3] 
*)
 
let rec count_up = function
  | 0 -> []
  | n -> count_up (n - 1) @ [n] ;;
 
(* Test Cases for count_up *)
check_expect_int_list(count_up 3, [1; 2; 3], "Counts up to 3") ;;
check_expect_int_list(count_up 0, [], "Just stays at 0") ;;
check_expect_int_list(count_up 1, [1], "Counts up to 1") ;;

 
