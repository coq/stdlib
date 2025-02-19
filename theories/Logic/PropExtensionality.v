(************************************************************************)
(*         *      The Rocq Prover / The Rocq Development Team           *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(** This module states propositional extensionality and draws
    consequences of it *)

Axiom propositional_extensionality :
  forall (P Q : Prop), (P <-> Q) -> P = Q.

From Stdlib Require Import ClassicalFacts.

Theorem proof_irrelevance : forall (P:Prop) (p1 p2:P), p1 = p2.
Proof.
  apply ext_prop_dep_proof_irrel_cic.
  exact propositional_extensionality.
Qed.
