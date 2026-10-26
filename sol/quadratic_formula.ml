open! Src.Cs17_setup_hw06

(* 
quadratic_formula : float * float * float -> float * float
   Input(s): a ~ a float that is a variable
             b ~ a float that is a varaible
             c ~ a float that is a constant
   Output(s): the two values returned by calculating the quadratic formula
 
  No Recursion 
  *) 
 
let quadratic_formula = function
  (a, b, c) -> ((-. b -. sqrt (b *. b -. 4.0 *. a *. c)) /. (2.0 *. a),
                (-. b +. sqrt (b *. b -. 4.0 *. a *. c)) /. (2.0 *. a)) ;;
 
(* Test Cases for quadratic_formula *)
check_expect_float (first (quadratic_formula (1.0, -5.0, 6.0)), 2.0, "x^2 - 5x + 6, first answer") ;;
check_expect_float (second (quadratic_formula (1.0, -5.0, 6.0)), 3.0, "x^2 - 5x + 6, second answer") ;;